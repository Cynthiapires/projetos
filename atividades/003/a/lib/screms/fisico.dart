import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Fisico extends StatefulWidget {
  const Fisico({super.key});

  @override
  State<Fisico> createState() => _FisicoState();
}

class _FisicoState extends State<Fisico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desencolvimento Físico'),
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
                'images/3.png',
              ),
            ),
            const Text(
              '''Este tema tem o objetivo de ampliar a compreensão sobre o impacto das próprias práticas sobre\n as habilidades motoras, bem-estar psicológico, competência social e maturidade emocional.''',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
