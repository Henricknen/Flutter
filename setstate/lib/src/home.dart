import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {     // criação do widget com 'StatefulWidget'
    @override
    _HomePage createState() => _HomePage();     // declarando o 'createState' que executará o 'HomePage'
}

class _HomePage extends State<HomePage> {       // classe '_HomePage' estende um estado espeçifico da tela 'HomePage'

    int contagem = 0;       // definindo variável contagem
    var fundo = Colors.red;     // variável 'fundo' define a cor de fundo

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('setState')
            ),
            body: Container(
                color: fundo,
                child: Column(
                    children: <Widget>[
                        Text('Contagem'),
                        Text(contagem.toString()),      // linha que mostra a contagem
                        ElevatedButton(     // botão
                            child: Text('Aumentar'),
                            onPressed:() {
                                setState(() {       // comando 'setState' permite fazer a 'atualização' da variável contagem
                                    contagem = contagem + 1;     // incrementa a 'contagem' quando o botão for clicado
                                });
                            },
                        ),
                        ElevatedButton(
                            child: Text('Azul'),
                            onPressed: () {
                                setState(() {
                                    fundo = Colors.blue;        // alterando a cor da variável fundo
                                });
                            },
                        )
                    ],
                )
            )
        );
    }
}