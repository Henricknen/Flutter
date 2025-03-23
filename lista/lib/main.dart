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
            body: ListView(   // utilizanodo widget 'ListView' para criar uma lista
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),   // propriedade 'leading' permite inserir icones
                  trailing: Text('Selecionado'),
                  title: Text('Mapa')
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  trailing: TextButton(onPressed: null, child: Text('Checked')),
                  title: Text('Mapa')
                ),
              ],
            ) 
        )
    );         
  }
}