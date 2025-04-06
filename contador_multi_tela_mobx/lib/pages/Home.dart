part of '../main.dart';     // indica que esse arquivo é parte do arquivo main.dart

class HomeScreen extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Multi Telas MobX'),
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
                        ),
                        ElevatedButton(
                            child: Text('Ir para tela Sobre'),
                            onPressed: () {
                                Navigator.pushNamed(context, '/sobre');
                            }
                        )
                    ],
                ),
            ),
            )
        );
    }
}