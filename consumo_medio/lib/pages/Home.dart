import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/consumo_list.dart'; // importando 'store'
final consumos = ConsumoList();     // instânciando class 'ConsumoList'

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double consumo = 0;

  void _handleConsumoField(String text) {
    setState(() {
      if(text != '') {
        consumo = double.parse(text);
      } else {
        consumo = 0;
      }
    });
  }

  void _handleResgistrarButton() {
    if(consumo > 0) {
      consumos.addConsumo( consumo );
    }
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
                ElevatedButton(
                    child: Text('Registrar $consumo'),
                    onPressed: _handleResgistrarButton,
                ),

                Row(    // linha
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children:[
                          Text('Consumos registrados'),
                          Text('${consumos.list.length}')
                        ]
                      )
                    ),
                    Expanded(
                      child: Column(
                        children:[
                          Text('Consumo médio geral'),
                          Text('${consumos.mediaGeral}')
                        ]
                      )
                    ),
                  ],
                ),

                Text('Registro:'),
                Container(
                  height:200,
                  child: ListView.builder(
                    itemCount: consumos.list.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Text('- ${consumos.list[index]}');
                    },
                  ),
                )

            ],
        )
      )
    );
  }
}
