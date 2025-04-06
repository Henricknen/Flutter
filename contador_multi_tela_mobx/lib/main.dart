import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';    // importando biblioteca mobx
import 'stores/contador.dart';    // importando contador

part 'pages/Home.dart';     // 'part' importa a tela Home 
part 'pages/Sobre.dart';

final contador = Contador();    // criando contador

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {   // rotas
        '/home': (context) => HomeScreen(),
        '/sobre': (context) => SobreScreen()
      }
    );
  }
}