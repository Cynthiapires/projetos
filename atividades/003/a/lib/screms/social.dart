import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desencolvimento Social'),
        backgroundColor: Color.fromARGB(255, 33, 80, 223),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4),
              child: Text(
                 '''O desenvolvimento Social baseia-se na organização e construção de um ambiente relacional, \n 
                    em que se valorizada e escutada, o que contribui para o seu bem-estar e autoestima.''',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
              child: Image.asset(
                'images/2.png',
              ),
            ),
            const Text(
              '''''',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
