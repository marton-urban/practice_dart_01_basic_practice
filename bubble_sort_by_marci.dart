List<int> bubble(List<int> list) {
  print('Initial list: $list');
  final loops = list.length - 1;
  var switches = 0;
  for (int n = 0; n < loops; n++) {
    switches = 0;
    for (int i = loops; i > n; i--) {
      final first = list[i - 1];
      final second = list[i];
      if (second < first) {
        list[i - 1] = second;
        list[i] = first;
        switches++;
      }
    }
    print('${n + 1}: $list');
    if (switches == 0) break;
  }
  return list;
}

void main() =>
    print('Sorted list: ${bubble([1, 2, 3, 4, 5, 6, 7, 8, 9]..shuffle())}');
