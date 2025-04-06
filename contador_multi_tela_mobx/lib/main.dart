import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';    // importando biblioteca mobx
import 'stores/contador.dart';

part 'pages/Home.dart';     // 'part' importa a tela Home 
part 'pages/Sobre.dart';  

final contador = Contador();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/sobre': (context) => SobreScreen()
      }
    );
  }
}