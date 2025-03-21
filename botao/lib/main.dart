import 'package:flutter/material.dart';

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {

  botaoAction() {
    print("O botão foi clicado...");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botao'),
        ),
        body: Center(
          child:Column(
            children: <Widget>[
              Text('Clique no botão abaixo:'),
              TextButton(   // 'TextButton' cria um botão
                child: Text('Clique aqui...'),
                onPressed:botaoAction       // 'onPressed' chamará a função 'botaoAction' quando o botão for pressionado                 
              ),
            ],
          
          )
        )
      )
    );
  }
}
