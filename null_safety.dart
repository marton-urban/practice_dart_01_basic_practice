// dart 2.8
// int absoluteValue(int? value) {
//   return value?.abs() ?? 0;
// }

// dart 2.9 - flow analysis: promotion
int absoluteValue(int? value) {
  if (value == null) {
    throw Exception();
  }
  return value.abs();
}

// null-aware cascade operator
class Path {
  void moveTo(int x, int y) {}
  void lineTo(int x, int y) {}
}

void main() {
  // Path? path;

  // path
  //   ?..moveTo(0, 0)
  //   ..lineTo(2, 0)
  //   ..lineTo(2, 2)
  //   ..lineTo(0, 2)
  //   ..lineTo(0, 0);

/*
    if (path == null) {
    throw Exception();
  }
  path
    ..moveTo(0, 0)
    ..lineTo(2, 0)
    ..lineTo(2, 2)
    ..lineTo(0, 2)
    ..lineTo(0, 0);
*/
}

// null-aware subscript operator

// int? first(List<int>? items) {
//   return items != null ? items[0] : null;
// }

int? first(List<int>? items) {
  return items?[0];
}
