import 'package:flutter/material.dart';

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: const Text('Lista')
            ),            
            body: ListView(   // utilizanod widget 'ListView' para criar uma lista
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width:150,
                  color:Colors.red
                ),
                Container(
                  width:150,
                  color:Colors.blue
                ),
                Container(
                  width:150,
                  color:Colors.green
                ),
              ],
            ) 
        )
    );         
  }
}