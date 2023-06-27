import 'package:flutter/material.dart';

main() => runApp(const MaterialApp(
      home: CheckBoxListTile(),
    ));

class CheckBoxListTile extends StatefulWidget {
  const CheckBoxListTile({super.key});

  @override
  State<CheckBoxListTile> createState() => _CheckBoxListTileState();
}

class _CheckBoxListTileState extends State<CheckBoxListTile> {
  bool _pizzaMarguerita = false;
  bool _pizzaCalabreza = false;

  void saidaPedido() {
    print("Pedido:");
    if (_pizzaMarguerita == true) {
      print("Pizza Marguerita: $_pizzaMarguerita");
    }
    if (_pizzaCalabreza == true) {
      print("Pizza Calabreza: $_pizzaCalabreza");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App com lista de seleção"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheckboxListTile(
              title: Text("Pizza Marguerita"),
              subtitle: Text("Tomate, cebola, mangericão, queijo"),
              activeColor: Colors.black,
              selected: false,
              secondary: Icon(Icons.add_box),
              value: _pizzaMarguerita,
              onChanged: (bool? valor) {
                setState(() {
                  _pizzaMarguerita = valor!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Pizza Calabreza"),
              subtitle: Text("Calabreza, cebola, queijo"),
              activeColor: Colors.black,
              selected: false,
              secondary: Icon(Icons.add_box),
              value: _pizzaCalabreza,
              onChanged: (bool? valor) {
                setState(() {
                  _pizzaCalabreza = valor!;
                });
              },
            ),
            ElevatedButton(
                onPressed: saidaPedido, child: Text("Fazer o Pedido"))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.feed), label: "Feed"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          ]),
    );
  }
} 
