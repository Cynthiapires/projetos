import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  home: BotaoRadio(),
));

class BotaoRadio extends StatefulWidget {
  const BotaoRadio({super.key});

  @override
  State<BotaoRadio> createState() => _BotaoRadioState();
}


class _BotaoRadioState extends State<BotaoRadio> {
  int? _opcao = 1;

  void saidaOpcao() {
    print("Seleção: ");
    print("Opção selecionada - $_opcao");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Radio"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Opção 1"),
              value: 1,
              groupValue: _opcao,
              onChanged: (int? selecao) {
                setState(() {
                  _opcao = selecao;
                });
              }),
            RadioListTile(
              title: Text("Opção 2"),
              value: 2,
              groupValue: _opcao,
              onChanged: (int? selecao) {
                setState(() {
                  _opcao = selecao;
                });
              }),  
            RadioListTile(
              title: Text("Opção 3"),
              value: 3,
              groupValue: _opcao,
              onChanged: (int? selecao) {
                setState(() {
                  _opcao = selecao;
                });
              }),

              ElevatedButton(
                onPressed: saidaOpcao,
                child: Text("Fazer pedido"),
              )
          ],
        ),
      ),
    );
  }
}
