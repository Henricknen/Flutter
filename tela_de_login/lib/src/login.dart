import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget { // Tela precisa ser 'StatefulWidget' por causa do formulário
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();    

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
                  labelText: 'Digite o seu e-mail'
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'É necessário digitar um e-mail';
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,      // 'obscueText' oculta a senha
                decoration: InputDecoration(
                  labelText: 'Digite a sua senha',
                ),
                validator: (value) {
                  if (value.isEmpty) {      // se senha estiver vazia
                    return 'É necessário digitar uma senha';
                  }
                  if (value?.length ?? 0 < 4) {
                    return 'Senha é muito curta. (digite pelo menos 4 caracteres)';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    
                }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
