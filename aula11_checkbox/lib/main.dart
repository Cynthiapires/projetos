import 'package:flutter/material.dart';

main() => runApp(
  const MaterialApp(
    home: CheckboxApp(),
    debugShowCheckedModeBanner: false,
  )
);

class CheckboxApp extends StatefulWidget {
  const CheckboxApp({super.key});

  @override
  State<CheckboxApp> createState() => _CheckboxAppState();
}

class _CheckboxAppState extends State<CheckboxApp> {
  bool _selecaoCheckBox = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text("App com caixa de seleção"),
      backgroundColor: Colors.indigo,
      ),
    
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Faça sua escolha"),

            Checkbox(
              value: _selecaoCheckBox, 
              onChanged: (bool? valor) {
                setState(() {
                  _selecaoCheckBox = valor!;
                });
              })
          ],
        ),
      ),
    );
  } 
}