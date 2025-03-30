import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/contador.dart';

class HomePage extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Campo de texto')
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        TextField(      // 'TextField' permite inserir um campo de texto
                            decoration: InputDecoration(
                                labelText: 'Digite algo'
                            ),
                            onChanged: (text) {     // 'onChanged' pega o valor que está sendo digitado
                                Provider.of<Contador>(context, listen: false).mudarNome(text);
                            },
                        ),

                        Consumer<Contador>(
                            builder: (context, contador, child) => Text(
                                'Meu nome é: ${contador.nome}'
                            )
                        ),


                        Text('Contagem'),
                        Consumer<Contador>(
                            builder: (context, contador, child) => Text(
                                contador.valor.toString()
                            )
                        ),
                        ElevatedButton(
                            child: Text('Aumentar'),
                            onPressed:() {

                                Provider.of<Contador>(context, listen: false).aumentar();

                            },
                        ),
                        ElevatedButton(
                            child: Text('Ir para HELP'),
                            onPressed: () {
                                Navigator.pushNamed(context, '/help');
                            },
                        )
                    ],
                )
            )
        );
    }
}