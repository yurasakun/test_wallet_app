import 'package:mobx/mobx.dart';
import 'package:test_wallet_app/features/transactions_list/controller/calculate_point/calculate_point.dart';

part 'loading_point.g.dart';

// ignore: library_private_types_in_public_api
class LoadingPointController = _LoadingPointController
    with _$LoadingPointController;

abstract class _LoadingPointController with Store {
  @observable
  ObservableFuture<Total>? loadedPoint;

  @action
  Future fetchData() => loadedPoint = ObservableFuture(
          Future.delayed(const Duration(milliseconds: 500), () {
        final calculate = CalculatorPoint();
        return calculate.total;
      }));

  void loadValue() {
    fetchData();
  }
}
