import 'package:flutter/material.dart';
import './help.dart';       // importando 'help.dart' para utilizar a classe 'ScreenArguments' que ha dentro do mesmo

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Home Page'),
            ),
            body: Center(
                child: TextButton(
                    child: Text('Ir pra tela HELP'),
                    onPressed: () {
                        Navigator.pushNamed(
                        context,
                        '/help',
                        arguments: ScreenArguments('Titulo', 'Menssagem'));        // 'arguments' passa os parâmetros 'Titulo' e 'Menssagem' que serão enviados para outra tela
                    }
                ),
            )
        );
    }
}