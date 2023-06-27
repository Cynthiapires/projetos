import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'Trabalhando com botões',
  home: Container(
    margin: const EdgeInsets.only(top: 60),

    padding: const EdgeInsets.all(20),
    color: Colors.blueGrey,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Colors.pinkAccent,

            backgroundColor: Colors.white,

            padding: 
              const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 32
              ),
          ),
          onPressed: () {
            print('Executando');
          },
          child: const Text(
            'Meu Botão',
            style: TextStyle(
              fontSize: 20
            ),
          )  
        ),

        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {print("Botão");}, 

          style: ElevatedButton.styleFrom(
            primary: Colors.amber,

            onPrimary: Colors.white
          ),

          child: const Text(
            "Botão 2",
            style: TextStyle(
              fontSize: 20
            ),
          )
        ),

        const SizedBox(height: 20,),

        OutlinedButton(
          onPressed: () {}, 
        
        style: OutlinedButton.styleFrom(
          primary: Colors.black,

          side: const BorderSide(
            width: 1,
            color: Colors.orange
          )
        ),

          child: const Text(
            "Botão 3",
            style: TextStyle(
              fontSize: 30
            ),
          ),
        ),

        const SizedBox(height: 20,),

        ElevatedButton.icon(
          onPressed: () {}, 
          icon: const Icon(
            Icons.accessibility,
            color: Colors.white,
        ), 
        label: const Text("Label do Botão")),

        const SizedBox(height: 20,),

        const ElevatedButton(
          onPressed: null, 
          child: Text(
            "Botão Desativado",
          style: TextStyle(fontSize: 25),
          )
        ),
      ],
    ),
  ),
));