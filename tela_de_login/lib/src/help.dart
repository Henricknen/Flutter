import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/contador.dart';
 
class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E8BF1),
        title: Text('Titulo HELP'),
      ),
      body: Center(
          child: Consumer<Contador>(
            builder: (context, contador, child) => Text(
              'Contagem: ${contador.nome}'
            ),
          ),
      ),
    );
  }
}
