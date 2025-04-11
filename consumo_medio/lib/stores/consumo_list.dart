import 'package:mobx/mobx.dart';

part 'consumo_list.g.dart';

class ConsumoList = _ConsumoList with _$ConsumoList;

abstract class _ConsumoList with Store {
  @observable
  ObservableList<double> list = ObservableList<double>();

  @action
  void addConsumo(double data) {
    list.add(data);
  }

  @action
  void limpar() => list = ObservableList<double>();
}
