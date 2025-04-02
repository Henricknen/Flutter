import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/contador.dart';
import './formulario.dart';

class HomePage extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2E8BF1),
                title: Text('Tela de login')
            ),
            body: Center(
                child: Column(
                    children: <Widget>[                        
                        Container(
                            height:200,
                            child: Center(
                              child: Text('Bem vindo', style: TextStyle(
                                fontSize: 30                                
                              )),
                            ),
                        ),
                        ElevatedButton(
                            child: Text('Fazer Login'),
                            onPressed: () {
                                Navigator.pushNamed(context, '/login');
                            }
                        )
                    ],
                ),
            )
        );
    }
}