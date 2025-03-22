import 'package:flutter/material.dart';

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Criando Tela')
        ),
        body:Column(
          children: <Widget>[
            Image(image: AssetImage('assets/muro.jpg')),     // inserindo imagem 
            Container(
              padding: EdgeInsets.all(20),
              child:Row(
                children:[
                  Expanded(
                    child: Column(    // campo de informações
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinha os textos à esquerda
                      children: [
                        Text(
                          'Muro das lamentações',
                        style: TextStyle(fontSize:18, fontWeight:FontWeight.bold, color:Colors.black)
                        ),
                        Text(
                          'Jerusalém, Israel',
                        style: TextStyle(fontSize:16, color:Colors.grey)
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color:Colors.blue),
                      Text('9.65')
                    ],
                  )
                ]
              )
            )
          ],
        )
      )
    );
  }
}
