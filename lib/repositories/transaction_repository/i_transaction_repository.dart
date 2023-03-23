import 'package:test_wallet_app/repositories/model/transaction.dart';

abstract class ITransactionRepository {
  Future<List<TransactionItem>> getTransactions();
}
