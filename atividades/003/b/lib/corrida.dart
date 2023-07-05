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
        title: const Text('Tom e Jerry'),
        backgroundColor: Color.fromARGB(255, 197, 45, 96),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}


