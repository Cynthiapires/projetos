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


