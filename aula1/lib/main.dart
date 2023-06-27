import 'package:flutter/material.dart';

main() => runApp(FormatacaoTextoApp());

class FormatacaoTextoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Formatando Textos",
      home: Container(
        child: Column(
          children: const [
            Text(
              'Texto para ser formatado!!!',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 40,
                fontWeight: FontWeight.normal,
                letterSpacing: 1,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 112, 211, 137)
              ),
            )
          ],
        ),
      ),
    );
  }
}