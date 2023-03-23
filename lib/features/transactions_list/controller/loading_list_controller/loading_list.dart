import 'package:mobx/mobx.dart';
import 'package:test_wallet_app/repositories/model/transaction.dart';

import '../../../../app/locator.dart';
import '../../../../repositories/transaction_repository/i_transaction_repository.dart';

part 'loading_list.g.dart';

// ignore: library_private_types_in_public_api
class LoadingTransactionsController = _LoadingTransactionsController
    with _$LoadingTransactionsController;

abstract class _LoadingTransactionsController with Store {

  @observable
  ObservableFuture<List<TransactionItem>>? loadedObjects;

  @action
  Future fetchData() =>
      loadedObjects = ObservableFuture( Future.delayed(const Duration(milliseconds: 500),()=>
          getIt<ITransactionRepository>().getTransactions()));


  void loadValue() {
    fetchData();
  }

}
