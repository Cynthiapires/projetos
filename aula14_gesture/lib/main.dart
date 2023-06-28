import 'package:flutter/material.dart';

main() => runApp(const MaterialApp(
      home: Gesture(),
    ));

class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  _GestureState creatState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  String _personagem = '';
  var _imagem = const AssetImage('images/imagem.png');

  personagemEscolhido(String personagem) {
    if (personagem == 'joao') {
      _personagem = 'Você escolheu o João!';
      _imagem = const AssetImage('images/jo.png');
    } else if (personagem == 'juliana') {
      _personagem = 'Você escolheu o Juliana!';
      _imagem = const AssetImage('images/ju.png');
    } else {
      _personagem = 'Você escolheu o José!';
      _imagem = const AssetImage('images/ze.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture App'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        // Primeiro uma coluna
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Agora ums Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Detecção de toque na tela
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        personagemEscolhido('joao');
                      });
                    },
                    child: Image.asset(
                      'images/joao.png',
                      width: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        personagemEscolhido('juliana');
                      });
                    },
                    child: Image.asset(
                      'images/juliana.png',
                      width: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        personagemEscolhido('jose');
                      });
                    },
                    child: Image.asset(
                      'images/jose.png',
                      width: 100,
                    ),
                  ),
                ],
              ),

              //Mais uma coluna
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Escolha um personagem',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Image(
                            image: _imagem,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        _personagem,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //BottomBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, currentIndex: 0,
        // C4riando uma lista de itens para Barra de Navegação
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
