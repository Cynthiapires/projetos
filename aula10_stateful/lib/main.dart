import 'package:flutter/material.dart';

main() => runApp(
  const MaterialApp(
    home: AppDinamico(),
  )
);

class AppDinamico extends StatefulWidget {
  const AppDinamico({super.key});

  @override
  State<AppDinamico> createState() => _AppDinamicoState();
}

class _AppDinamicoState extends State<AppDinamico> {
  String _nome = "Jhon Doe";
  final String _titulo = "Meu App Stateful";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.deepOrange,
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(_nome),
              ElevatedButton(
                onPressed: () {
                setState(() {
                  _nome = "Cock Doe";
                });
                print("Funcionando: $_nome");
              }, 
              child: const Text("Clique aqui para alterar o nome")
              )
            ],
          ),
        ),
        ),
      );
    }
  }