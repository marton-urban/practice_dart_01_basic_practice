void main() {
  const list = [1, 2, 3];
  const l2 = [1.2, 2.3, 3.4];
  final doubles = transform<int, int>(list, (x) => x * 2);
  final rounded = transform<double, int>(l2, (x) => x.round());
  // final doubles = transform(list, (x) => (x as int) * 2);
  // final rounded = transform(l2, (x) => (x as double).round());
  print(doubles);
  print(rounded);
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
