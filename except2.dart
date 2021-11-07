class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } on Exception catch (e) {
    print(e);
    print('normal Exception?');
  } finally {
    print('testFraction done');
  }
}

void main() {
  testFraction();
  print('done');
}
