import 'package:mobx/mobx.dart';

part 'contador.g.dart';

class Contador = _Contador with _$Contador;

abstract class _Contador with Store {
    @observable
    int valor = 0;

    @action
    void aumentar() {
        valor++;
    }
}

// flutter packages pub run build_runner build - comando para corrigir/gerar informações necessarias