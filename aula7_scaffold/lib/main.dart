import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  home: Scaffold(
    appBar: AppBar(
      title: const Text("Minha aplicação com Scaffold"),
      backgroundColor: Colors.amber,
    ),
    body: const Padding(
      padding: EdgeInsets.all(50),
      child: Text(
        "Corpo da aplicação", 
        style: TextStyle(fontSize: 20),
      ),
    ),

    bottomNavigationBar: BottomAppBar(
      color: Colors.lightBlue,
      child: Row(
        children: const [
          Text("Home"),
          Padding(padding: EdgeInsets.all(8),
          child: Text(
            "Agenda",
            style: TextStyle(
            fontSize: 20,
            color: Colors.amber),
          ),),

          Text("Contato"),
        ],
      ),
    ),
  ),
));