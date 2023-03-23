import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_wallet_app/repositories/model/transaction.dart';
import 'i_transaction_repository.dart';

class JsonTransactionItemRepository implements ITransactionRepository {
  @override
  Future<List<TransactionItem>> getTransactions() async {
    List<TransactionItem> transaction = [];
    try {
      String json = await rootBundle.loadString("assets/json/transactions.json",
          cache: false);
      var data = jsonDecode(json);
      for (final item in data) {
        transaction.add(TransactionItem.fromJson(item));
      }
      return transaction;
    } catch (error) {
      return [];
    }
  }
}
