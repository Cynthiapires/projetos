import 'package:flutter/material.dart';

main() => runApp(const EstaticoApp());

class EstaticoApp extends StatelessWidget {
  const EstaticoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: widgetImutavel(),
    );
  }
}

class widgetImutavel extends StatelessWidget {
  const widgetImutavel({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless bonito demaise"),
        backgroundColor: Colors.amber,
      ),

      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text("Conteudo do app"), 
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  const [
              Text("Text 1"),
              Text("Text 2",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
              Text("Text 3")
            ],
          ),
          ),
      ),
    );
  }
}
