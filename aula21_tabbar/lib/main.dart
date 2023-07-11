import 'package:flutter/material.dart';

void main() {
  runApp(
    const MeuApp(),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação com Tab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Navigation'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home, color: Colors.blue),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.search, color: Colors.blue),
              text: 'Buscar',
            ),
            Tab(
              icon: Icon(Icons.person, color: Colors.blue),
              text: 'Perfil',
            )
          ],
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Home(),
          Busca(),
          Perfil(),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Image.asset('assets/circulo.png'),
                const SizedBox(height: 16),
                const Text(
                  'Imagem Home 1',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Image.asset('assets/circulo.png'),
                const SizedBox(height: 16),
                const Text(
                  'Imagem Home 2',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Busca extends StatelessWidget {
  const Busca({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/circulo.png'),
                    const SizedBox(height: 16),
                    const Text(
                      'Imagem Buscar 1',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/circulo.png'),
                    const SizedBox(height: 16),
                    const Text(
                      'Imagem Buscar 2',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}

class Perfil extends StatelessWidget {

  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/circulo.png'),
                    const SizedBox(height: 16),
                    const Text(
                      'Imagem Perfil 1',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/circulo.png'),
                    const SizedBox(height: 16),
                    const Text(
                      'Imagem Perfil 2',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}