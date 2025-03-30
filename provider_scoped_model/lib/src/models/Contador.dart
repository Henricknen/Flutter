import 'package:flutter/material.dart';

class Contador with ChangeNotifier {        // classe que armazenará os valores que forem precisos
    int valor = 0;      // variável valor armazena iniçia com 0

    void aumentar() {       // função 'contadora'
        valor++;
        notifyListeners();
    }
}