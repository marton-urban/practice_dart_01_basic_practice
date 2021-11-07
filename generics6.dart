class Tuple<T> {
  final T? _a;
  final T? _b;
  final T? _c;

  T? get first => _a;
  T? get second => _b;
  T? get third => _c;

  const Tuple(this._a, this._b, this._c);
  Tuple.fromList(List<T> list)
      : _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  Tuple<num> operator +(Tuple<num> t) {
    if (this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! + t._a!, thisAsTupleNum._b! + t._b!,
          thisAsTupleNum._c! + t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  Tuple<num> operator -(Tuple<num> t) {
    if (this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! - t._a!, thisAsTupleNum._b! - t._b!,
          thisAsTupleNum._c! - t._c!);
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

  print('tuple1 --> $tuple1');
  print('tuple2 --> $tuple2');
  print('tuple3 --> $tuple3');
  print('tuple4 --> $tuple4');
  print('tuple5 --> $tuple5');
}
