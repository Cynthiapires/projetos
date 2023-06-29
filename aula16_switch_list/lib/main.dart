import 'package:flutter/material.dart';
 main () => runApp(const MaterialApp( 
    home: AppSwitchList(), 
  ));

class AppSwitchList extends Statefulwidget {
const AppSwitchList ({super .key});

@override
AppSwitchListState createState() =>AppSwitchListState ();
}

class _AppSwitchListState extends State<AppSwitchList> { 
  bool _modoCor = false;
bool _modoSepia = false;
bool _modoRed = false;

@override
Widget build(BuildContext context) {
return Scaffold( 
  appBar: AppBar(
title: const Text(
  'App Switch List',
),
backgroundColor: Colors.red[60e],
  ),

body: Padding(
padding: const EdgeInsets.all (20),
 child: Column ( 
  children: [
//Criar o switch
SwitchListTile(
title: const Text (
'Modo Colorido',
style: TextStyle (color: [Colors.blueGrey),
 ),
  subtitle: const Text
'Teste SwitchListTile',
 ),
activeColor: Colors.blueGrey, secondary: const Icon (Icons monitor), value:
_modoCor,
onChanged: (bool estado1) {
setState(| {
modoCor = estado1;
});
}), // SwitchListTile
SwitchListTile(
title: Text
'Modo Colorido',
style: TextStyle(color: Colors .orange. shade100)
), // Text subtitle: const Text (
'Teste SwitchListTile', ), // Text activeColor: Colors.orange. shade100, secondary: const Icon (Icons.monitor), value:
modoSepia,
onChanged: (bool estado2) {
setState(() {
_modoSepia = estado2;
});
}), // SwitchListTile

),