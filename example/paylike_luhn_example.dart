import 'package:paylike_luhn/paylike_luhn.dart';

void main() {
  PaylikeLuhn.isValid('6123451234567893'); // true
  PaylikeLuhn.isValid('76009244561'); // false
  var incomplete = '612345123456789';
  var complete = '6123451234567893';
  PaylikeLuhn.calculateCheckDigit(incomplete); // "1"
  PaylikeLuhn.calculateCheckDigit(complete); // "3"
}
