import 'package:flutter/material.dart';   // importando biblioteca 'material'

void main() => runApp(MeuApp() );    // função 'principal' main

class MeuApp extends StatelessWidget {    // criação de 'Widget' do tipo 'Stateless'

  @override
  Widget build(BuildContext context) {    // função 'build' retorna o proprio widget ou seja a tela 
    return Center(    // retorna no centro da tela
      child: Text(    // parâmetro 'child' será um texto
        'Olá Mundo, iniçiando a códificação em Flutter!!!',   // texto
        textDirection: TextDirection.ltr,   // especificando o texto da esquerda para direita 'ltr'
      )
    );
  }

} 