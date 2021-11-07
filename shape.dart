import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print(area);
    print(perimeter);
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => side * 4;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  final myShapes = [
    Square(1),
    Circle(2),
    Square(3),
    Circle(4),
  ];
  myShapes.forEach((shape) => shape.printValues());
}
