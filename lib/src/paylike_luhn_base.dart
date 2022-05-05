/// PaylikeLuhn defines the class responsible for running the validation
class PaylikeLuhn {
  const PaylikeLuhn();

  /// isValid decides if [cardNumber] is valid or not
  static bool isValid(String cardNumber) {
    return cardNumber.substring(cardNumber.length - 1) ==
        _calculate(cardNumber.substring(0, cardNumber.length - 1));
  }

  /// calculateCheckDigit will return the check digit of [cardNumber]
  static String calculateCheckDigit(String cardNumber) {
    return _calculate(cardNumber.substring(0, cardNumber.length - 1));
  }

  static String _sum(String a, String b) => '${int.parse(a) + int.parse(b)}';
  static int _sumDigits(String number) =>
      int.parse(number.split('').fold('0', _sum));
  static String _calculate(String numbers) {
    var length = numbers.length;

    int product = numbers.split('').asMap().entries.fold(0, (p, element) {
      var isAlternate = (element.key + length) % 2 == 1;
      return p +
          (isAlternate
              ? _sumDigits('${int.parse(element.value) * 2}')
              : int.parse(element.value));
    });
    return '${((10 - (product % 10)) % 10)}';
  }
}
