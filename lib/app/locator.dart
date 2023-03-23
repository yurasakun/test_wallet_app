import 'package:get_it/get_it.dart';

import '../repositories/transaction_repository/i_transaction_repository.dart';
import '../repositories/transaction_repository/json_transaction_repository.dart';

final getIt = GetIt.instance;

class Locator {
  static void initial() {
    getIt.registerLazySingleton<ITransactionRepository>(
        () => JsonTransactionItemRepository());
  }
}
