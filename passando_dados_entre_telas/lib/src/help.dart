import 'package:flutter/material.dart';

class ScreenArguments {     // classe que reçebera os dados
  final String title;       // dados 'title'
  final String message;     // dados 'message'

ScreenArguments(this.title, this.message);      // parâmetros que serão reçebidos

}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ModalRoute? modalRoute = ModalRoute.of(context);    // acessa o 'ModalRoute' e verifica se não é nulo
    
    if (modalRoute == null || modalRoute.settings.arguments == null) {      // se modalRoute for 'nulo', retorna uma tela com erro ou uma página de fallback
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2E8BF1),
          title: Text('Erro'),
        ),
        body: Center(
          child: Text('Argumentos não fornecidos'),
        ),
      );
    }

    // Faz o cast para ScreenArguments de forma segura
    final ScreenArguments args = modalRoute.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E8BF1),
        title: Text(args.title),
      ),
      body: Center(
        child: TextButton(
          child: Text(args.message),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
