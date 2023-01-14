Future<void> countdown(int n) async {
  for (var i = n; i >= 0; i--) {
    print(await Future.delayed(Duration(seconds: 1), () => i));
  }
}

Future<void> main() async {
  try {
    await countdown(5);
    print('Done');
  } catch (e) {
    print(e);
  }
}
