import 'package:flutter/material.dart';

class Contador with ChangeNotifier {        // classe que armazenará os volores que forem precisos
    int valor = 0;      // armazendo o valor

    void aumentar() {       // contador
        valor++;
        notifyListeners();
    }
}