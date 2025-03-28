import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Home Page'),
            ),
            body: Center(
                child: TextButton(      // botão para trocar de tela
                    child: Text('Ir pra tela HELP'),
                    onPressed: () {
                        Navigator.pushNamed(context, '/help');      // utilizando 'Navigator.pushNamed' para troca de tela
                    }
                ),
            )
        );
    }
}