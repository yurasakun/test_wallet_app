abstract class Season {
  late final DateTime firstDateSeason;
}

class Winter implements Season {
  @override
  late final DateTime firstDateSeason;

  Winter({required int year, required int month}) {
    firstDateSeason = DateTime(
        month == 1 || month == 2 ? year - 1 : year, DateTime.december, 1);
  }
}

class Spring implements Season {
  @override
  late final DateTime firstDateSeason;

  Spring({required int year}) {
    firstDateSeason = DateTime(year, DateTime.march, 1);
  }
}

class Summer implements Season {
  @override
  late final DateTime firstDateSeason;

  Summer({required int year}) {
    firstDateSeason = DateTime(year, DateTime.june, 1);
  }
}

class Autumn implements Season {
  @override
  late final DateTime firstDateSeason;

  Autumn({required int year}) {
    firstDateSeason = DateTime(year, DateTime.september, 1);
  }
}

class Total {
  double _total = 0;

  Total({required double total}) {
    _total = total;
  }

  @override
  String toString() {
    String formattedNumber = '';

    if (_total >= 1000) {
      formattedNumber = "${(_total / 1000).round()}K";
    } else {
      formattedNumber = _total.round().toString();
    }

    return formattedNumber;
  }
}

class CalculatorPoint {
  Total get total => _calculate();

  int _getDifferenDay(DateTime firstDate, DateTime secondDate) {
    Duration difference = secondDate.difference(firstDate);
    int days = difference.inDays;
    return days + 1;
  }

  Season _getSeason(DateTime date) {
    int month = date.month;
    switch (month) {
      case 3:
      case 4:
      case 5:
        return Spring(year: date.year);
      case 6:
      case 7:
      case 8:
        return Summer(year: date.year);
      case 9:
      case 10:
      case 11:
        return Autumn(year: date.year);
      default:
        return Winter(year: date.year, month: date.month);
    }
  }

  double _calculateTotal(int days) {
    double prevDay = 3;
    double twoDayAgo = 2;
    double total = 0;

    if (days == 1) {
      total = twoDayAgo;
      return total;
    }
    if (days == 2) {
      total = twoDayAgo + prevDay;
      return total;
    }

    total = prevDay + twoDayAgo;
    for (int i = 3; i <= days; i++) {
      total += (prevDay * 0.6) + twoDayAgo;
      twoDayAgo = prevDay;
      prevDay = total;
    }

    return total;
  }

  Total _calculate() {
    final now = DateTime.now();
    final firstDateSeason = _getSeason(now).firstDateSeason;
    final days = _getDifferenDay(firstDateSeason, now);
    return Total(total: _calculateTotal(days));
  }
}