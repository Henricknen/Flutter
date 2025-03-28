import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/help.dart';

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {   // rotas para todas as tela do sistema
          '/home': (context) => HomePage(),
          '/help': (context) => HelpPage()
        },
        initialRoute: '/home',    // definindo rota 'iniçial'
    );         
  }
}