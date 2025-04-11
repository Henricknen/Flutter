import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/consumo_list.dart'; // importando 'store'
final consumos = ConsumoList();     // instânciando class 'ConsumoList'

class HomeScreen extends StatefulWidget { // Corrigido de "StatefuelWidget"
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double consumo = 0; // Corrigido de "doble consumeo = 0" e adicionado ";"

  void _handleConsumoField(String text) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E8BF1),
        title: Text('Consumo médio'),
      ),
      body: Observer(
        builder: (_) => Column(
            children: <Widget>[

                TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Qual foi o consumo da viagem ?'
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: _handleConsumoField
                ),
                TextButton(
                    child: Text('Registrar'),
                    onPressed: () {
                        print('Botão clicado!');
                    },
                )

            ],
        )
      )
    );
  }
}
