Future<void> countdown(int current) {
  return Future.delayed(Duration(seconds: 1), () => print(current));
}

Future<void> main() async {
  try {
    for (var i = 5; i >= 0; i--) {
      await countdown(i);
    }
    print('Done');
  } catch (e) {
    print(e);
  }
}
