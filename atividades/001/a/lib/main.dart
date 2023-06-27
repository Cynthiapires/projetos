import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: mediaAritmetica(),
));

class mediaAritmetica extends StatefulWidget {
  const mediaAritmetica({super.key});

  @override
  State<mediaAritmetica> createState() => _mediaAritmeticaState();
}

class _mediaAritmeticaState extends State<mediaAritmetica> {
  final TextEditingController _textEditingController_1 = TextEditingController();
  final TextEditingController _textEditingController_2 = TextEditingController();

  double _valor1 = 0;
  double _valor2 = 0;
  String _resultado = "Resultado: ";

  void recuperarValor() {
    setState(() {
      _valor1 = double.parse(_textEditingController_1.text);
      _valor2 = double.parse(_textEditingController_2.text);

      _resultado = "Resultado: " + ((_valor1 + _valor2) / 2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Média"),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          Image.asset("imagem/logo.png"),

          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "Preencha os campos abaixo",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),
          )),

          Padding(
            padding: EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                
                //Campo 1
                TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: "Informe o primeiro valor"
                  ),

                  enabled: true,

                  controller: _textEditingController_1,
                ),

                //Campo 2
                TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: "Informe o segundo valor"
                  ),

                  enabled: true,

                  controller: _textEditingController_2,
                ),

                //Calcular
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: recuperarValor, 
                    
                    child: Text("Calcular"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber
                    )
                  ),
                )
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      _resultado,
                      
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.redAccent
                      )
                    ))
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}