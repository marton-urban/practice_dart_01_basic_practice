List<int> pendulum(List<int> values) {
  final list = <int>[];
  var lengthIsOdd = false;
  values.sort();
  final evenLength = (values.length ~/ 2) * 2;
  if (evenLength != values.length) lengthIsOdd = true;
  for (var n = 0; n < evenLength; n++) {
    list.insert(0, values[n]);
    list.add(values[++n]);
  }
  if (lengthIsOdd) list.insert(0, values.last);
  return list.toList();
}

void main() {
  final stopwatch = Stopwatch()..start();
  print(pendulum([48, 43, 35, 47, 39, 38, 38, 46, 49, 32]));
  print('Executed in ${stopwatch.elapsed}');
}
