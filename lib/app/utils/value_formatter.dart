import 'package:intl/intl.dart';

import '../../generated/l10n.dart';

class FormatsValue {
  FormatsValue._();

  static String dateToMonth(DateTime time) {
    final DateFormat formatter = DateFormat('MMMM');
    final String formatted = formatter.format(time);
    return formatted;
  }

  static String formatDate(DateTime date, S locale) {

    DateTime currentDateTime = DateTime.now();
    DateTime today = DateTime(
        currentDateTime.year, currentDateTime.month, currentDateTime.day);
    DateTime yesterday = today.subtract(const Duration(days: 1));
    DateTime tomorrow = today.add(const Duration(days: 1));

    String format = "";

    if (date == yesterday) {
      format = locale.yesterday;
    } else if (date == today) {
      format = locale.today;
    } else if (date == tomorrow) {
      format = locale.tomorrow;
    } else if (_getWeakFromDate(date) == _getWeakFromDate(today)) {
      format = DateFormat('EEEE').format(date);
    } else {
      format = DateFormat('dd/MM/yy').format(date);
    }
    return format;
  }

  static int _getWeakFromDate(DateTime date){
    DateTime firstDateOnYear = DateTime(DateTime.now().year, DateTime.january, 1);
    Duration difference = date.difference(firstDateOnYear);
    int days = difference.inDays;
    return days ~/ 7;
  }
}
