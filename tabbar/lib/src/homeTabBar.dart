import 'package:flutter/material.dart';
import './home.dart';       // importando tela 'home.dart'
import './help.dart';

class HomeTabBar extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 2,      // quantidade de telas
            child: Scaffold(
                appBar: AppBar(
                    backgroundColor: Color(0xFF2E8BF1),
                    title: Text('TabBar'),
                    bottom: TabBar(
                        tabs: <Widget>[
                            Tab(text: 'Home', icon: Icon(Icons.home)),      // tela 'home'
                            Tab(text: 'Ajuda', icon: Icon(Icons.help))      // tela 'ajuda'
                        ],
                    ),
                ),
                body: TabBarView(       // widget 'TabBarView' com as duas páginas que serão utilizadas
                    children: <Widget>[
                        HomePage(),     // página 'home'
                        HelpPage()
                    ],
                ),
            )
        );
    }
}