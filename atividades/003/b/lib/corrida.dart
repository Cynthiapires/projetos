import 'package:flutter/material.dart';
class Corrida extends StatefulWidget {
  const Corrida({Key? key}) : super(key: key);

  @override
  State<Corrida> createState() => _CorridaState();
}

class _CorridaState extends State<Corrida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Corrida Maluca'),
        backgroundColor: Color.fromARGB(255, 197, 45, 96),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('''Corrida Maluca uma competição totalmente surreal e personagens super carismáticos! \n "Aqui estão agora os volantes mais birutas do mundo para realizar mais uma corrida maluca,\nem uma disputa pelo título de volante mais biruta do mundo."'''),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset('images/4.png'),
          ),
          ],
        ),
      ),
    );
  }
}


