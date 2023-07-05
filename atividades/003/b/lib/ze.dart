import 'package:b/corrida.dart';
import 'package:flutter/material.dart';
class Ze extends StatefulWidget {
  const Ze({Key? key}) : super(key: key);

  @override
  State<Ze> createState() => _ZeState();
}

class _ZeState extends State<Ze> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tom e Jerry'),
        backgroundColor: Color.fromARGB(255, 4, 136, 8),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Corrida(),
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


