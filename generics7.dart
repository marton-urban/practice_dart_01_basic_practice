class Tuple<T> {
  const Tuple(this._a, this._b, this._c);

  final T? _a;
  final T? _b;
  final T? _c;

  T? get first => _a;
  T? get second => _b;
  T? get third => _c;

  Tuple.fromList(List<T> list)
      : _a = list.isNotEmpty ? list[0] : null,
        _b = list.length > 1 ? list[1] : null,
        _c = list.length > 2 ? list[2] : null;

  Tuple<num> operator +(Tuple<num> t) {
    if (this is Tuple<num>) {
      return Tuple(
          (_a as num) + t._a!, (_b as num) + t._b!, (_c as num) + t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  Tuple<num> operator -(Tuple<num> t) {
    if (this is Tuple<num>) {
      return Tuple(
          (_a as num) - t._a!, (_b as num) - t._b!, (_c as num) - t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  @override
  String toString() => 'Tuple(_a: $_a, _b: $_b, _c: $_c)';
}

void main(List<String> arguments) {
  const tuple1 = Tuple(1, 2, 3);
  final tuple2 = Tuple.fromList([4, 5, 6]);
  final tuple3 = Tuple.fromList([7]);
  final tuple4 = Tuple.fromList([7, 8, 9, 10]);
  final tuple5 = tuple1 + tuple2;

  print('$tuple1\n$tuple2\n$tuple3\n$tuple4\n$tuple5');
}
