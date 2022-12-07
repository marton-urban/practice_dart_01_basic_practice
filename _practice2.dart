// this solution also works for [] and [ x ] as well
import 'package:collection/collection.dart';

int? firstNonConsecutive(List<int> arr) {
  final missing = arr.isEmpty
      ? null // add check so it also works for []
      : List.generate(
              arr.last - arr.first + 1,
              (index) =>
                  arr.first +
                  index) // generate consecutive list without missing element
          .firstWhereOrNull((e) => !arr.contains(
              e)); // find first missing element by comparing to generated list
  return missing != null ? missing + 1 : null;
}

void main() {
  print(firstNonConsecutive(const []));
  print('cool');
}
