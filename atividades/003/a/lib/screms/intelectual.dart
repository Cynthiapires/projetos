import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Intelectual extends StatefulWidget {
  const Intelectual({super.key});

  @override
  State<Intelectual> createState() => _IntelectualState();
}

class _IntelectualState extends State<Intelectual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desencolvimento Intelectual'),
        backgroundColor: Color.fromARGB(255, 33, 80, 223),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4),
              child: Text(
                '',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
              child: Image.asset(
                'images/4.png',
              ),
            ),
            const Text(
              '''O conhecimento é um dos recursos mais poderosos que se pode ter, porque é algo que ninguém pode lhe tirar.\n Contudo, mais importante do que apenas valorizar tudo o que sabe, é necessário estar sempre em busca do seu \n desenvolvimento intelectual, pois sempre existe algo novo a ser aprendido.''',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
