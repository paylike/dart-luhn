# Calculate/verify check digit (luhn) of credit cards

This library is a clone of the original javascript [implementation from Paylike](https://github.com/paylike/luhn).
```dart
// Is the card number valid?
var card = '6123451234567893';
var luhn = PaylikeLuhn();
luhn.isValid(card);	// true


// Calculate check digit
// MII + IIN + "Individual account number"
var incomplete = '612345123456789';

luhn.calculateCheckDigit(incomplete);	// "3"
```

Implemented according to ISO/IEC 7812-1:2015(E) which goes:

1. Double the value of alternate digits beginning with the first right-hand
   digit (low order).

2. Add the individual digits comprising the products obtained in Step 1 to
   each of the unaffected digits in the original number.

3. Subtract the total obtained in Step 2 from the next higher number ending in
   0 [this is the equivalent of calculating the “tens complement” of the
   low-order digit (unit digit) of the total]. If the total obtained in Step 2
   is a number ending in zero (30, 40, etc.), the check digit is 0.
