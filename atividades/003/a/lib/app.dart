import 'screms/social.dart';
import 'screms/fisico.dart';
import 'screms/espiritual.dart';
import 'screms/intelectual.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desenvolvimento Pessoal'),
        backgroundColor: Color.fromARGB(239, 198, 110, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                  children: [
                  Image.asset('../images/capa.png'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Espiritual(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'images/1.png'
                              ),
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Social(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'images/2.png'
                              ),
                          ),  
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Fisico(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'images/3.png'
                              ),
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Intelectual(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'images/4.png'
                              ),
                        ),  
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 100))
              ],  
          ),
        ),
      ),
    );
  }
}