import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


main() => runApp(MaterialApp(
  home: PesoIdeal(),
));

class PesoIdeal extends StatefulWidget {
  const PesoIdeal({super.key});

  @override
  State<PesoIdeal> createState() => _PesoIdealState();
}

class _PesoIdealState extends State<PesoIdeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peso Ideal"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset("imagem/imc_logo.png"),

                Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                )
              ],
            ))
        ],
      ),
    );
  }
}