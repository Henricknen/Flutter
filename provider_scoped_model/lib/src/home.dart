import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('provider e scoped model')
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        Text('Contagem'),
                        ElevatedButton(     // botão
                            child: Text('Aumentar'),
                            onPressed:() {
                            },
                        ),
                        ElevatedButton(
                            child: Text('Ir para HELP'),
                            onPressed: () {
                                Navigator.pushNamed(context, '/help');      // ação que leva para página 'help'
                            },
                        )
                    ],
                )
            )
        );
    }
}