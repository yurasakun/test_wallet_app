import 'package:flutter/material.dart';

import '../../../app/color.dart';

class CardWallet extends StatelessWidget {
  const CardWallet(
      {Key? key,
      required this.width,
      required this.height,
      required this.child})
      : super(key: key);

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            color: WalletColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3),
          child: child,
        ));
  }
}
