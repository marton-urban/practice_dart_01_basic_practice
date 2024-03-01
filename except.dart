import 'dart:io';

void main() {
  try {
    final first = division(9, 0);
    print(first);
  } on StdoutException catch (e) {
    print(e);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } finally {
    print('cool');
  }
}

double division(int numb1, int numb2) {
  return numb1 / numb2;
}
