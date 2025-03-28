import 'package:flutter/material.dart';
import 'src/homeTabBar.dart';   // importando arquivo TabBar.dart

void main() => runApp(MeuApp() );

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeTabBar()
    );         
  }
}