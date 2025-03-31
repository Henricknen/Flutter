import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Digite o seu nome:',
                ),
                validator: (value) {
                    if(value.isEmpty) {     // validador
                        return 'É necessário digitar algo...';
                    }

                    return null;
                },
              ),

              TextButton(
                child: Text('Enviar'),
                onPressed: () {

                    if(_formKey.currentState.vaidate()) {
                        print("Formulario VALIDADO...");
                    }

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
