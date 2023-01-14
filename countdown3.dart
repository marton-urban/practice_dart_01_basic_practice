Future<int> countdown(int current) {
  return Future.delayed(
    Duration(seconds: 1),
    () => current,
  );
}

Future<void> main() async {
  try {
    for (var i = 5; i >= 0; i--) {
      print(await countdown(i));
    }
    print('Done');
  } catch (e) {
    print(e);
  }
}
