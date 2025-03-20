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
        
        body: Column(   // coluna
          children: <Widget>[
            Row(    // 1° linha 'Row' tem 'Expanded' com um 'Container'
              children: <Widget>[
                Expanded(
                  child:Container(
                    height:100,
                    color:Colors.red
                  )
                )
              ]
            ),
            Row(    // 2° linha 'Row' tem dois 'Expanded' e cada um contém um 'Container'
              children:[
                Expanded(   // 'Expanded' divide a figura em tamanhos iguais na linha 
                  child:Container(
                    width:100,
                    height:100,
                    color:Colors.blue
                  )
                ),
                Expanded(
                  child:Container(
                    width:100,
                    height:100,
                    color:Colors.green
                  )
                )
              ]
            ),
            Row(    // 3° linha 'Row' tem três 'xpanded' e cada um tem um 'Conatainer'
              children:<Widget>[
                Expanded(
                  child:Container(
                    width:100,
                    height:100,
                    color:Colors.yellow
                  )
                ),
                Expanded(
                  child:Container(
                    width:100,
                    height:100,
                    color:Colors.orange
                  )
                ),
                Expanded(
                  child:Container(
                    width:100,
                    height:100,
                    color:Colors.black
                  )
                )
              ]
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child:Container(
                    height:100,
                    color:Colors.pink
                  )
                )
              ]
            ),
          ],
        )
      )
    );
  }

}