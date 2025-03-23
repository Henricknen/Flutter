import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {

  callAction() {

  }

  mapAction() {

  }

  shareAction() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Criando Tela')),
        body: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/muro.jpg')),    // inserindo imagem
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(    // campo de informações
                      crossAxisAlignment: CrossAxisAlignment.start,     // alinha os textos à esquerda
                      children: [
                        Text(
                          'Muro das lamentações',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          'Jerusalém, Israel',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.blue),
                      Text('9.65')
                    ],
                  )
                ]
              )
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Botao(    // chamando componente Botao
                    icon: Icons.call,    // passando propriedades
                    text: 'Ligar',
                    onPressed:callAction,
                  ),
                  Botao(
                    icon: Icons.location_on,
                    text: 'Mapa',
                    onPressed:mapAction,
                  ),
                  Botao(
                    icon: Icons.share,
                    text: 'Compartilh',
                    onPressed:shareAction,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'O Muro das Lamentações, também conhecido como Kotel em hebraico, é um dos locais mais sagrados do judaísmo. '
                'Ele é uma parede de pedras remanescente do Segundo Templo de Jerusalém, que foi destruído pelos romanos no ano 70 d.C.',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Botao extends StatelessWidget {     // componente Botao
  Botao({
    this.onPressed,
    required this.icon,
    required this.text,
  });

  final void Function()? onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,     // atribuindo corretamente a função 'onPressed'
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            Text(text)
          ]
        )
      )
    );
  }
}
