import 'package:flutter/material.dart';

class Componente extends StatelessWidget {
  const Componente({
    Key? key,
    this.title,    
    required this.onPress,   // 'required' para garantir que onPress seja obrigatório
  }) : super(key: key);

  final String? title;      // permite que title seja nulo
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    
    final String displayTitle = title ?? 'Título não obrigatório...';

    return Container(
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(displayTitle),
          TextButton(
            onPressed: onPress,
            child: Text('Clique aqui...'),
          ),
        ],
      ),
    );
  }
}
