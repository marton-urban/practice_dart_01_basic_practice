extension IterableX<T extends num> on Iterable<T?> {
  T? sum() {
    return reduce((value, element) {
      if (value != null && element != null) {
        return value + element as T;
      } else {
        return value ?? element;
      }
    });
  }
}

void main() {
  final sum = [null, 1, 2, null, 3].sum();
  final sum2 = [null, 1.5, 2.5, null, 3.5].sum();
  print(sum);
  print(sum2);
}
