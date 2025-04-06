import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/contador.dart';       // importando 'store'
final contador = Contador();    // 'instançiando' o contador

class HomeScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Biblioteca MobX'),
            ),
            body: Observer(     // 'Observer' é um observador onde será montada a tela
                builder: (_) => Center(     // tela
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Contagem:'),
                        Text('${contador.valor}'),
                    ElevatedButton(
                        child: Text('Aumentar Contagem'),
                        onPressed: contador.aumentar,   // passando declarção da função aumentar
                    )
                    ],
                ),
            ),
            )
        );
    }
}