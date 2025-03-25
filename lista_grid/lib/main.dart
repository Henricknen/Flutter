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
            body: GridView.count(   // 'GridView' permite criar uma lista com grid
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,    // quantidade de colunas
              children: <Widget>[
                Container(
                  color:Colors.red,
                ),
                Container(
                  color:Colors.blue,
                ),
                Container(
                  color:Colors.green,
                ),
                Container(
                  color:Colors.yellow,
                ),
                Container(
                  color:Colors.black,
                ),
              ]
            )    
        )
    );         
  }
}