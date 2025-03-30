import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/contador.dart';

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
                        Consumer<Contador>(     // 'Consumer' permite ler as informações
                            builder: (context, contador, child) => Text(
                                contador.valor.toString()
                            )
                        ),
                        ElevatedButton(     // botão
                            child: Text('Aumentar'),
                            onPressed:() {

                                Provider.of<Contador>(context, listen: false).aumentar();       // 'Provider' permite excutar algo, nesse caso chama a função 'aumentar'

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