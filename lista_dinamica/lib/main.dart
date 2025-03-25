import 'package:flutter/material.dart';

void main() => runApp(const MeuApp());

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  var formacao = [    // array com minhas formações
    'Pós Desenvolvimento Web',
    'Graduação Análise e Desenvolvimento de Sistemas',
    'Técnico Informática para Internet',
    'Técnico Eletroeletrônica',
    'Curso Front-End',
    'Curso Lógica de Programação',
  ];

  List<bool> concluido = List.generate(6, (index) => false);    // lista de booleanos para armazenar se o item foi concluído ou não

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Lista dinâmica'),
        ),
        body: ListView.builder(
          itemCount: formacao.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text(formacao[index]),
              trailing: TextButton(
                onPressed: () {
                  setState(() {
                    concluido[index] = !concluido[index];   // alterna o estado
                  });
                  print('Concluído: ${formacao[index]}');
                },
                child: Text(concluido[index] ? 'Desmarcar' : 'Concluído'),
              ),
            );
          },
        ),
      ),
    );
  }
}
