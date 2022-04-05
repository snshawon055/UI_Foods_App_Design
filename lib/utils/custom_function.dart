import 'package:intl/intl.dart';

String formetCurrncy(num amount, {int decimalCount = 0}) {
  final formetCurrncy =
      new NumberFormat.simpleCurrency(decimalDigits: decimalCount);
  return formetCurrncy.format(amount);
}
