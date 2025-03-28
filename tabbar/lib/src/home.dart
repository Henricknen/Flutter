import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: ElevatedButton(      // botão 'ElevatedButton'
                child: Text('Mostrar Snackbar'),        // texto do botão
                onPressed: () {
                    var snackbar = SnackBar(        // criando 'snackbar'
                        content: Text('Teste'),         // texto do aviso snackbar    
                        action: SnackBarAction(     // 'action' cria a ação de desfazer, 'fechando' o snackbar
                            label: 'Desfazer',
                            onPressed: () {

                            },
                        ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackbar);       // 'exibindo' snackbar
                },
            )
        );
    }
}