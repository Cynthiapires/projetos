import 'package:b/tom.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scooby-Doo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text('Quatro adolescentes metidos a detetives — Fred, Velma, Daphne e Salsicha — com Scooby-Doo, um Dogue\n Alemão falante, viajam numa van chamada Máquina de Mistério, e ajudam a investigar casos misteriosos. '),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset('images/1.png'),
          ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Tom(),
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


