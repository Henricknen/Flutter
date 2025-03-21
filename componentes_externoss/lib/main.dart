import 'package:flutter/material.dart';

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

class Componente extends StatelessWidget {
  const Componente({
    Key? key,
    this.title,    
    required this.onPress,   // 'required' para garante que onPress seja obrigatório
  }) : super(key: key);

  final String? title;      // permite que title seja nulo
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final String title = title ?? 'Título não obrigatório...';    // verificando se existe título

    return Container(
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title),
          TextButton(
            onPressed: onPress,   // passando a função onPress
            child: Text('Clique aqui...'),
          ),
        ],
      ),
    );
  }
}
