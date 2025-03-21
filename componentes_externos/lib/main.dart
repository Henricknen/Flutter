import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes externos'),
        ),
        body: Column(
          children: <Widget>[
            Componente(),   // chamando componente externo quantas vezes for necessária
            Componente(),
            Componente(),
          ]
        )
      )
    );
  }
}


class Componente extends StatelessWidget {    // exemplo de componente 'externo'

  @override
  Widget build(BuildContext context) {

    return Container(
      width:200,
      color:Colors.red,
      margin: EdgeInsets.all(10),   // inserindo uma medida em todos os lados
      padding: EdgeInsets.all(10),   // inserindo espaçamento interno
      child: Column(
        children:[
          Text('Texto de exemplo'),
          TextButton(
            onPressed: () {

              print('Botão clicado!');
            },
            child: Text('Clique aqui...'),
          )
        ]
      )
    );
  }

}