import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: Bitcoin(),
      ),
    );

class Bitcoin extends StatefulWidget {
  const Bitcoin({Key key}) : super(key: key);

  @override
  State<Bitcoin> createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  String _valor = '0';

  Future<void> _buscarValor() async {
    var response = await get(
      Uri.https('blockchain.info', '/pt/ticker'),
    );

    Map<String, dynamic> objetoJason = json.decode(response.body);

    setState(() {
      _valor = objetoJason['BRL']['15m'].toString();
      print(_valor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cotação Bitcoin'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'images/bitcoin.png',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    'Valor do Bitcoin R\$$_valor',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _buscarValor,
                  child: const Text('Cotação'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
