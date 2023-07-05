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
        title: const Text('Zé Colmeia e Catatau'),
        backgroundColor: Color.fromARGB(255, 4, 136, 8),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('''Zé Colmeia, ele aparece no Parque Jellystone, que é uma imitação caricaturizada do famoso Parque Nacional de Yellowstone, nos Estados Unidos. \n Zé é sempre acompanhado do seu 
             melhor amigo Catatau, tentando ou arquitetando uma forma de roubar as cestas de piquenique dos visitantes distraídos do parque. '''),
          Image.asset('images/3.png'),

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


