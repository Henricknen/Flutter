import 'package:flutter/material.dart';

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layouts')
        ),
        
        body: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,   // centraliza a linha de icones no centro da tela
              children: [
                Icon(Icons.star, color: Colors.green),    // icone 'estrela'
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.green),
                Icon(Icons.star, color: Colors.green)
              ]
            ),

            Row(   // 'Row' é uma linha horizontal, que permite inserir quantos itens forem necessários
              children: [
                Expanded(   // 'Expanded' divide a area pela quantidade de filhos 'child' que 'children' contém
                  child: Container(
                    child: Text('NOME'),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text('SOBRENOME'),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text('IDADE'),
                  ),
                ),
              ],
            ),

            Row(    // outra linha
              children: [
                Expanded(
                  child: Container(
                    child: Text('Luis Henrique'),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text('Silva Ferreira'),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text('33 anos'),
                  ),
                ),
              ],
            )
          ]
        )
      )
    );
  }

}