void main() async {
  final stream = Stream.fromIterable([1, 2, 3]);
  final value = await stream.first;
  print(value);
  final stream2 = Stream.fromIterable([4, 5, 6]);
  await stream2.forEach((element) => print(element));
  final stream3 = Stream.fromIterable([1, 2, 3]);
  final doubles = stream3.map((value) => value * 2).where((value) => value > 3);
  print(doubles);
  await doubles.forEach(print);
}
