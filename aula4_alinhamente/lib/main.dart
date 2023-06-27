import 'package:flutter/material.dart';

main() => runApp(const AlinhamentoApp());

class AlinhamentoApp extends StatelessWidget {
  const AlinhamentoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alinhamento',
      home: Container(
        margin: const EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.blue
          ),
          color: Color.fromARGB(255, 51, 37, 37)
        ),


        child: Column(

          // Alinhamento horizontal (em Row, se for column esse é o vertical)
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          // Alinhamento vertical (em Row, se for column esse é o horizontal)
          crossAxisAlignment: CrossAxisAlignment.center,

          children: const [
            Text(
              'A',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30
              ),
            ),
            Text(
              'B',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30
              ),
            ),
          ],
        ),
      ),
    );
  }
}