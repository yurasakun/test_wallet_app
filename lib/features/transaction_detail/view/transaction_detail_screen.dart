import 'package:flutter/material.dart';
import 'package:test_wallet_app/repositories/model/transaction.dart';

import '../../../app/color.dart';
import '../widgets/widgets.dart';

class TransactionDetailScreen extends StatefulWidget {
  const TransactionDetailScreen({Key? key}) : super(key: key);

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  TransactionItem? transaction;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is TransactionItem);
    transaction = args as TransactionItem;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var transact = transaction;
    return Scaffold(
        backgroundColor: WalletColors.pageColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: WalletColors.backButtonColor, //change your color here
          ),
          leading: IconButton(
            splashRadius: 20,
            icon: const Icon(Icons.arrow_back_ios_sharp),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (transact != null) TransactionDetails(transact: transact)
            ],
          ),
        ));
  }
}
