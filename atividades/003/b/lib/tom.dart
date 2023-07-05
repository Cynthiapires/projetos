import 'package:b/ze.dart';
import 'package:flutter/material.dart';
class Tom extends StatefulWidget {
  const Tom({Key? key}) : super(key: key);

  @override
  State<Tom> createState() => _TomState();
}

class _TomState extends State<Tom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tom e Jerry'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('''Tom e Jerry é a mais tradicional e influente série de curta-metragens de cinema criada por William Hanna e Joseph Barbera
             \n para a Metro-Goldwyn-Mayer, cujo tema é a eterna rivalidade entre um gato doméstico chamado Tom e um rato chamado Jerry.'''),
          Image.asset('images/2.png'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ze(),
                  ),
                );
              },
              child: const Text(
                'Próximo Desenho',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


