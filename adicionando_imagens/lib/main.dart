import 'package:flutter/material.dart';

void main() => runApp( MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inserido imagens'),
        ),
        body: Column(
          children: <Widget>[
            Image(              
              image: AssetImage('assets/flutter.png')   // especificando o caminho da imagem
            ),
            Image.network('https://www.google.com.br/logos/google.jpg')        // carrega imagem online
          ],
        )
      ),
    );
  }
}
