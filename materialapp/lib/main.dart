import 'package:flutter/material.dart';   // importando biblioteca 'material'

void main() => runApp(MeuApp() );    // função 'principal' main

class MeuApp extends StatelessWidget {    // criação de 'Widget' do tipo 'Stateless'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   // retornando toda estrutuara do MaterialApp
      home: Scaffold(
        appBar: AppBar(   // propriedade 'appBar' é a barra superior
          title: Text('biblioteca MaterialApp')
        ),
        body: Center(   // propriedade 'body' é o corpo da tela, contém um item centralizado 'Center'
          child: Text('Profissional: Luis Henrique S. Ferreira')    // o item contém um filho 'child'
        )
      ),
    );
  }

} 