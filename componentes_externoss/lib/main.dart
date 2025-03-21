import 'package:flutter/material.dart';
import 'componetes.dart';   // importando arquivo externo 'componetes.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes externos'),
        ),
        body: Column(
          children: <Widget>[
            Componente(
              title: 'Título obrigatório',
              onPress: () {
                print('Clicou no item 1');
              },
            ),
            Componente(
              title: 'Título obrigatório',
              onPress: () {
                print('Clicou no item 2');
              },
            ),
            Componente(
              title: 'Título opcional',
              onPress: () {
                print('Clicou no item 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}