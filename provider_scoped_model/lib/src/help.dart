import 'package:flutter/material.dart';
 
class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E8BF1),
        title: Text('Titulo HELP'),
      ),
      body: Center(
          child: Text('Texto HELP'),
      ),
    );
  }
}
