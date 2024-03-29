import 'dart:math';

abstract class Shape {
  double get area;
  const Shape();
}

class Square extends Shape {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

Shape fromJson(Map<String, Object> json) {
  // this could also be in the Shape class with static keyword
  final type = json['type'];
  switch (type) {
    case 'square':
      final side = json['side'];
      if (side is double) {
        return Square(side);
      }
      throw UnsupportedError('invalid or missing side property');
    case 'circle':
      final radius = json['radius'];
      if (radius is double) {
        return Circle(radius);
      }
      throw UnimplementedError('invalid or missing radius property');
    default:
      throw UnimplementedError('shape $type not recognized');
  }
}

void main() {
  final shapesJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    },
  ];
  final shapes = shapesJson.map(fromJson);
  shapes.forEach(printArea);
}
