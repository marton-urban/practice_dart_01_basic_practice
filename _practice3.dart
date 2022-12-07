class Temperature {
  Temperature.celsius(this.celsius);
  Temperature.farenheit(this.farenheit);
  late double celsius = (farenheit - 32) / 1.8;
  late double farenheit = celsius * 1.8 + 32;
}

void main() {
  final temp1 = Temperature.celsius(30);
  final temp2 = Temperature.farenheit(90);
  print(temp1.celsius);
  print(temp1.farenheit);
  print(temp2.celsius);
  print(temp2.farenheit);
}
