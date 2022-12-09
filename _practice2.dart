import "package:test/test.dart";
import "package:solution/solution.dart";
import "dart:math";

void main() {
  group("fixed tests", () {
    test("Testing for [1, 2, 3, 4, 5]", () => expect(positiveSum([1, 2, 3, 4, 5]), equals(15)));
    test("Testing for [1, -2, 3, 4, 5]", () => expect(positiveSum([1, -2, 3, 4, 5]), equals(13)));
    test("Testing for []", () => expect(positiveSum([]), equals(0)));
    test("Testing for [-1, -2, -3, -4, -5]", () => expect(positiveSum([-1, -2, -3, -4, -5]), equals(0)));
    test("Testing for [-1, 2, 3, 4, -5]", () => expect(positiveSum([-1, 2, 3, 4, -5]), equals(9)));
  });
  group("Random tests", () {
    Random rinst = Random();
    int sol(List<int> arr) => arr.where((x) => x > 0).fold(0, (a, b) => a + b);
    for (int i = 0; i < 100; i++) {
      List<int> arr = List<int>.generate(rinst.nextInt(20) + 1, (_) => rinst.nextInt(200) - 100);
      test("Testing for $arr", () => expect(positiveSum([]..addAll(arr)), equals(sol(arr))));
    }
  });
}