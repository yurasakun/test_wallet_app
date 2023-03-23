import 'dart:math';

import 'package:flutter/material.dart';

class RandomValue{
  RandomValue._();

  static IconData getIcon(){
    final Random random = Random();
    const String chars = '0123456789ABCDEF';
    int length = 3;
    String hex = '0xe';
    while(length-- > 0) {
      hex += chars[(random.nextInt(16)) | 0];
    }
    return IconData(int.parse(hex), fontFamily: 'MaterialIcons');
  }

  static double getBalance(){
    double doubleInRange(Random source, num start, num end) =>
        source.nextDouble() * (end - start) + start;

    return doubleInRange(Random(), 0, 1500);
  }

  static Color getColor(){

    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}