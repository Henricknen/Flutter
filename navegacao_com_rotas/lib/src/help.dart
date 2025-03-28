import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Help Page'),
            ),
            body: Center(
                child: TextButton(
                    child: Text('Voltar'),
                    onPressed: () {
                        Navigator.pop(context);     // 'pop' permite voltar uma tela
                    }
                ),
            )
        );
    }
}