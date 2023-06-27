import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(
  const MaterialApp(
    home: Entradas(),
  ),
);

class Entradas extends StatefulWidget {
  const Entradas({super.key});

  @override
  _EntradasState createState() => _EntradasState();
}

class _EntradasState extends State<Entradas> {
  final TextEditingController _textEditingController = TextEditingController();

  String _resposta = 'Resultado';

  void recuperarValor() {
    setState(() {
      _resposta = _textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada Dados"),
        backgroundColor: Colors.amber,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),

            child: TextField(
              keyboardType: TextInputType.text,

              decoration: const InputDecoration(
                labelText: "Digita a parada"
              ),

              enabled: true,
              
              maxLength: 10,

              maxLengthEnforcement: MaxLengthEnforcement.none,

              style: const TextStyle(
                fontSize: 20,
                color: Colors.redAccent
              ),

              obscureText: false,

              controller:  _textEditingController,
            ),
          ),

          ElevatedButton(
            onPressed: recuperarValor, 
            child: Text("Salvar"),),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                _resposta,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey
                ),
              ),
            )

        ],
      ),
    );
  }
}