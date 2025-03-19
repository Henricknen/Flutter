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
        
        body: Container(   // widget 'Container e Center' só é possível adiçionar apenas um filho 'child'
          color: Colors.green,
          child: Row(   // 'Row' é uma linha horizontal, que permite inserir quantos itens forem necessários
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
          )
        )
      )
    );
  }

}