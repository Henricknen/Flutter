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
      if (text != '') {
        consumo = double.parse(text);
      } else {
        consumo = 0;
      }
    });
  }

  void _handleResgistrarButton() {
    if (consumo > 0) {
      consumos.addConsumo(consumo);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;    // altura da tela para responsividade

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E8BF1),
        title: Text('Consumo médio'),
      ),
      body: Observer(
        builder: (_) => SingleChildScrollView(    // permite rolagem em telas pequenas
          child: Padding(
            padding: const EdgeInsets.all(16.0),    // adiciona margem ao redor do conteúdo
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,     // ocupa toda a largura da tela disponível
              children: <Widget>[
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Qual foi o consumo da viagem ?',
                    border: OutlineInputBorder(),     // adicionando borda ao campo de texto
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: _handleConsumoField,
                ),
                SizedBox(height: 16),     // da um espaçamento entre o campo e o botão
                ElevatedButton(
                  style: ElevatedButton.styleFrom(      // estilo adaptável para o botão
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text('Registrar $consumo'),
                  onPressed: _handleResgistrarButton,
                ),
                SizedBox(height: 24),     // dando um espaçamento antes da linha
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Consumos registrados',
                            style: TextStyle(fontWeight: FontWeight.bold),      // destacando o título
                          ),
                          Text('${consumos.list.length}'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Consumo médio geral',
                            style: TextStyle(fontWeight: FontWeight.bold),    // estilizando o título
                          ),
                          Text('${consumos.mediaGeral}'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),     // da um espaçamento antes do título "Registro"
                Text(
                  'Registro:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),    // da um espaçamento antes da lista
                Container(
                  height: screenHeight * 0.3,     // deixando a altura adaptável da lista
                  child: ListView.builder(
                    itemCount: consumos.list.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Text('- ${consumos.list[index]}');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
