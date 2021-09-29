import 'package:paylike_luhn/paylike_luhn.dart';

void main() {
  var luhn = PaylikeLuhn();
  luhn.isValid('6123451234567893'); // true
  luhn.isValid('76009244561'); // false
  var incomplete = '612345123456789';
  luhn.calculateCheckDigit(incomplete); // "3"
}
