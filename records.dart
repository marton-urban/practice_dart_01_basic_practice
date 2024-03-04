({String name, int age, int height}) getPerson(Map<String, dynamic> json) {
  return (
    name: json['name'],
    age: json['age'],
    height: json['height'],
  );
}

void main() {
  final json = {'name': 'Marci', 'age': 37, 'height': 195};
  final person = getPerson(json);
  print(person.name);
  print(person.age);
  print(person.height);
}
