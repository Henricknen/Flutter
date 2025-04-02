import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {   // por causa da validação o formulário tem que ser 'Stateful'
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[

          TextFormField(    // campo de nome
            decoration: InputDecoration(
              hintText: 'Digite algo'
            ),
            validator: (value) {    // criando uma validação com 'validator' com uma função com parâmetro 'value' valor digitado no campo
              if(value == null || value.isEmpty) {   // processo de validação, verificando se o campo está vazio
                return 'É precisso digitar algum nome...';
              }
              return null;
            },
          ),

          ElevatedButton(
            child: Text("Enviar"),
            onPressed: () {

              if (_formKey.currentState?.validate() ?? false) {
                print("Formulário VALIDADO!");
              }

            },
          )

        ],
      ),
    );
  }
}
