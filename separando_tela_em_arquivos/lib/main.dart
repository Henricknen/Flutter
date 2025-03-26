import 'package:flutter/material.dart';
import 'src/home.dart';   // importando home.dart que contém a classe HomePage

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('Flutter')
            ),            
            body: Center(
              child: HomePage()    // executando tela home
            )
        )
    );         
  }
}