import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Espiritual extends StatefulWidget {
  const Espiritual({super.key});

  @override
  State<Espiritual> createState() => _EspiritualState();
}

class _EspiritualState extends State<Espiritual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desencolvimento Espiritual'),
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
                    '''O desenvolvimento espiritual é algo pessoal, uma jornada íntima, natural, \n que vai ao encontro a verdadeira essência de cada um.''',
                 style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
              child: Image.asset(
                'images/1.png',
              ),
            ),
            const Text(
              '''''',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
