// this simple method converts the integers to a list of digits reversed
int add(int num1, int num2){
  final largerNum = num1 >= num2 ? num1 : num2;
  final smallerNum = num1 < num2 ? num1 : num2;
  final list1 = largerNum.toString().split('').reversed.map(int.parse).toList();
  final list2 = smallerNum.toString().split('').reversed.map(int.parse).toList();
  while (list1 != list2) list2.add(0);
  final sumAsList = [for (var i = 0; i < list1.length ; i++) list1[i] + list2[i]];
  return int.parse(sumAsList.reversed.join());
}

void main () {
  print(add(123,11));
}