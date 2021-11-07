extension IterableNumX<T extends num> on Iterable<T?> {
  T? sum() {
    var sum = (T == int ? 0 : 0.0) as T;
    for (var current in this) {
      if (current != null) {
        sum = sum + current as T;
      }
    }
    return sum;
  }
}

void main() {
  final sum = [null, 1, 2, null, 3].sum();
  final sum2 = [null, 1.5, 2.5, null, 3.5].sum();
  print(sum);
  print(sum2);
}

// extension IterableNumX<T extends num> on Iterable<T?> {
//   T? sum() {
//     dynamic sum = 0;
//     for (var current in this) {
//       if (current != null) {
//         sum = sum + current;
//       }
//     }
//     return sum;
//   }
// }