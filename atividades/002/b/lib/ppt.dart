import 'dart:math';
import 'package:flutter/material.dart';

enum Choice {
  Pedra,
  Papel,
  Tesoura,
}

class pedrapapeltesoura extends StatefulWidget {
  const pedrapapeltesoura({Key? key}) : super(key: key);

  @override
  _pedrapapeltesouraState createState() => _pedrapapeltesouraState();

}

class _pedrapapeltesouraState extends State<pedrapapeltesoura> {
  String _personagem = '';
  dynamic _imagem2 = const AssetImage('imagem/padrao.png');
  dynamic _imagem1 = const AssetImage('imagem/pedra.png');
  dynamic _imagem3 = const AssetImage('imagem/papel.png');
  dynamic _imagem4 = const AssetImage('imagem/tesoura.png');

  Choice _appChoice = Choice.Pedra;
  Choice _userChoice = Choice.Pedra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokenpo'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Escolha do App',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Image(
                image: _getImageForChoice(_appChoice),
                width: 100,
              ),
            ),
            Text(
              _personagem,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Papel, Pedra ou Tesoura?',
              style: const TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _userChoice = Choice.Papel;
                            _playGame();
                          });
                        },
                        child: Image.asset(
                          'imagem/papel.png',
                          width: 80,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _userChoice = Choice.Pedra;
                            _playGame();
                          });
                        },
                        child: Image.asset(
                          'imagem/pedra.png',
                          width: 80,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _userChoice = Choice.Tesoura;
                            _playGame();
                          });
                        },
                        child: Image.asset(
                          'imagem/tesoura.png',
                          width: 80,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _playGame() {
    _appChoice = _getRandomChoice();
    _setResult();
  }

  Choice _getRandomChoice() {
    final random = Random();
    final values = Choice.values;
    return values[random.nextInt(values.length)];
  }

  void _setResult() {
    if (_userChoice == _appChoice) {
      _personagem = 'Empate';
    } else if (_userChoice == Choice.Pedra && _appChoice == Choice.Tesoura ||
        _userChoice == Choice.Papel && _appChoice == Choice.Pedra ||
        _userChoice == Choice.Tesoura && _appChoice == Choice.Papel) {
      _personagem = 'Você venceu!';
    } else {
      _personagem = 'Você perdeu!';
    }
  }

  AssetImage _getImageForChoice(Choice choice) {
    switch (choice) {
      case Choice.Pedra:
        return _imagem1;
      case Choice.Papel:
        return _imagem3;
      case Choice.Tesoura:
        return _imagem4;
      default:
        return _imagem2;
    }
  }
}