import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Padding no Widget',
  home: Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      border: Border.all(width: 5, color: Colors.white)
    ),
    child: Row(
      children: const [
        Text(
          'Texto 1',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Colors.redAccent,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            'Texto 2',
            style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Colors.blueAccent
            ),
          ),
        ),
        Text(
          'Texto 3',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Colors.amberAccent
          ),
        ),
      ],
    ),
  ),
));