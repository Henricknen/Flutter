import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget { 
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();    

  String email = '';    // que  salvará email iniciando vazia
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Digite o seu e-mail',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'É necessário digitar um e-mail';
                  }
                  return null;
                },
                onSaved: (txt) {    // Corrigido o tipo de parâmetro
                  email = txt ?? ''; // Salva o valor do email
                },
              ),

              TextFormField(
                obscureText: true,      // 'obscueText' oculta a senha
                decoration: InputDecoration(
                  labelText: 'Digite a sua senha',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {      // se senha estiver vazia
                    return 'É necessário digitar uma senha';
                  }
                  if ((value?.length ?? 0) < 4) {     // verifica o comprimento da senha
                    return 'Senha é muito curta. (digite pelo menos 4 caracteres)';
                  }
                  return null;
                },
                onSaved: (txt) {
                  senha = txt ?? '';    // salva o valor da senha
                },
              ),

              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();   // salva o formulário
                    
                  }
                },
              ),
              Text('E-mail: $email'),
              Text('Senha: $senha')
            ],
          ),
        ),
      ),
    );
  }
}
