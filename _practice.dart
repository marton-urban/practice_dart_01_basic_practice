// function
void foo() => print('foo');

// function
String bar() {
  return 'bar';
}

void fooBar() {
  int add(int a, int b) => a + b; // inline function

  int value = 0;
  for (var i = 0; i < 9; i++) {
    value = add(value, i); // call of inline function
    print(value);
  }
}

class SomeClass {
  static void foo() => print(
      'foo'); // function in class context sometimes called static method but actually not a method

  SomeClass(this.firstName);

  String firstName;

  // a real method with implicit access to `this`
  void bar() {
    print('$firstName bar');
    print('$firstName bar'); // this can and should be omitted in Dart

    void doSomething() =>
        print('doSomething'); // inline function declared in a method

    doSomething(); // call of inline function
  }
}

void main() {
  var aba = SomeClass('Marci');
  aba.bar();
}
