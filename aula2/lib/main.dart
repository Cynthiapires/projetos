import 'package:flutter/material.dart';

main() => runApp(const MargemPaddingApp());

class MargemPaddingApp extends StatelessWidget {
  const MargemPaddingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Margens e Espaçamento',
      home: Container(
        padding: const EdgeInsets.all(35),
        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(width: 5, color: Colors.amber),
        ),
        child: Column(
          children: const [
            Text(
              'Texto para vizualizar dar formatações do App!\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
            Text(
              'Texto 2!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}