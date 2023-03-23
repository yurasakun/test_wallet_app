import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:test_wallet_app/app/color.dart';

import '../../../generated/l10n.dart';
import '../controller/controllers.dart';
import 'card.dart';

class DailyPoint extends StatelessWidget {
  const DailyPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadPointController = LoadingPointController();
    final localization = S.of(context);
    loadPointController.loadValue();
    return CardWallet(
      height: 100,
      width: 180,
      child: Observer(builder: (_) {
        final future = loadPointController.loadedPoint;
        if (future == null) {
          return const Center(
            child: CircularProgressIndicator(
              color: WalletColors.textColor,
            ),
          );
        }
        if (future.status.index == FutureStatus.pending.index) {
          return const Center(
            child: CircularProgressIndicator(
              color: WalletColors.textColor,
            ),
          );
        }
        if (future.status.index == FutureStatus.fulfilled.index) {
          final points = future.result;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                localization.dailyPointTitle,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Text(
                points.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: WalletColors.textColor),
              ),
            ],
          );
        }
        return const SizedBox();
      }),
    );
  }
}
