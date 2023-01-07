import 'dart:collection';

List<int> pendulum(List<int> values) {
  final queue = Queue<int>();
  var lengthIsOdd = false;
  values.sort();
  final evenLength = (values.length ~/ 2) * 2;
  if (evenLength != values.length) lengthIsOdd = true;
  for (var n = 0; n < evenLength; n++) {
    queue.addFirst(values[n]);
    queue.addLast(values[++n]);
  }
  if (lengthIsOdd) queue.addFirst(values.last);
  return queue.toList();
}

void main() {
  final stopwatch = Stopwatch()..start();
  print(pendulum([48, 43, 35, 47, 39, 38, 38, 46, 49, 32]));
  print('Executed in ${stopwatch.elapsed}');
}
