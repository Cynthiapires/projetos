import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PesoIdeal(),
    ));

class PesoIdeal extends StatefulWidget {
  const PesoIdeal({super.key});

  @override
  State<PesoIdeal> createState() => _PesoIdealState();
}

class _PesoIdealState extends State<PesoIdeal> {
  final TextEditingController _textEditingController_1 =
      TextEditingController();
  final TextEditingController _textEditingController_2 =
      TextEditingController();

  double _peso = 0;
  double _altura = 0;
  String _resultado = "Resultado: ";

  void recuperarValor() {
    setState(() {
      _peso = double.parse(_textEditingController_1.text);
      _altura = double.parse(_textEditingController_2.text);

      _resultado =
          "Resultado: " + (_peso / (_altura * _altura)).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peso Ideal"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Image.asset('imagem/imc_logo.png'),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Cálculo do Peso Ideal, preencha as informações abaixo',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ))
                ],
              )),

          //Campo 1
          TextField(
            keyboardType: TextInputType.number,
            decoration:
                InputDecoration(labelText: "Informe a altura(ex.: 1.80)"),
            enabled: true,
            controller: _textEditingController_2,
          ),

          //Campo 2
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Informe o Peso(ex.: 70.5)"),
            enabled: true,
            controller: _textEditingController_1,
          ),

          //Calcular
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: ElevatedButton(
                onPressed: recuperarValor,
                child: Text("Calcular"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(_resultado,
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 19, color: Colors.green)))),
              )
            ],
          )
        ],
      ),
    );
  }
}
