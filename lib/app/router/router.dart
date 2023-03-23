import 'package:test_wallet_app/features/transaction_detail/transaction_detail.dart';
import 'package:test_wallet_app/features/transactions_list/transaction_list.dart';

final routes = {
  '/': (context) => const TransactionListScreen(),
  '/transaction': (context) => const TransactionDetailScreen(),
};
