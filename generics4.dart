extension IterableNumX<T extends num> on Iterable {
  T? sum() {
    dynamic sum;
    for (var current in this) {
      if (current != null) {
        if (sum == null) {
          sum = current;
        } else {
          sum += current;
        }
      }
    }
    return sum;
  }
}

void main() {
  final total = [1, 2, 3, 4].sum();
  final total2 = [null, null, 3.5].sum();
  print(total);
  print(total2);
}
