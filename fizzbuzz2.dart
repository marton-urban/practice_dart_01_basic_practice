String fizzbuzz(int i) {
  if (i % 15 == 0) {
    return 'FizzBuzz';
  } else if (i % 3 == 0) {
    return 'Fizz';
  } else if (i % 5 == 0) {
    return 'Buzz';
  } else {
    return i.toString();
  }
}

void main() {
  // print(List.generate(20, (int i) => fizzbuzz(i + 1)).join('\n'));
  // print([for (var i = 1; i <= 20; i++) i].map(fizzbuzz).join('\n'));
  // print(1.to(20).map(fizzbuzz).join('\n'));
}

extension RangeExtension on int {
  List<int> to(int maxInclusive, {int step = 1}) =>
      [for (int i = this; i <= maxInclusive; i += step) i];
}
