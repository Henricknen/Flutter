part of '../main.dart';     // indica que esse arquivo é parte do arquivo main.dart

class SobreScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Sobre'),
            ),
            body: Observer(     // 'Observer' é um observador onde será montada a tela
                builder: (_) => Center(     // tela
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Contagem: ${contador.valor}'),        // mostra contagem realizada pelo contador
                        ElevatedButton(
                            child: Text('Aumentar'),
                            onPressed: contador.aumentar,       // chamando função 'aumentar'
                        )
                    ],
                ),
            ),
            )
        );
    }
} 