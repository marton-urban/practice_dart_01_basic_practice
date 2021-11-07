extension IterableNumX<T extends num> on Iterable {
  T? sum() {
    var sum;
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
  final total = ['cool'].sum();
  final total2 = [null, null, 3.5].sum();
  print(total);
  print(total2);
}
