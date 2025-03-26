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
            title: Text('Drawer')
            ),            
            body: Center(
              child: Text("Flutter"),
            ),
            drawer:Drawer(
              child: ListView(    // 'ListView' cria barra de rolagem
                children: <Widget>[
                  DrawerHeader(   // area de cabeçalho
                    child: Text("Cabeçalho"),
                    decoration: BoxDecoration(   // propriedade 'decoration' permite pintar a cor de fundo
                      color: Colors.green
                    ),
                  ),
                  ListTile(   // 'ListTile' permite criar lista
                    title: Text('item 1'),
                    onTap: () {   // 'onTap' deixa o ListTil 'clicavel'

                    }
                  )
                ],
              ),
            )
        )
    );         
  }
}