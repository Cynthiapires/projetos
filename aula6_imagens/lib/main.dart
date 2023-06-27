import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  title: "Trabalhando com imagens",
  home: Container(
    margin: const EdgeInsets.only(top: 60),

    decoration: BoxDecoration(
      color: Colors.white,

      border: Border.all(
        width: 3,
        color: Colors.amber
      )
    ),

    child:Image.asset('olho.jpg'),
  ),
));