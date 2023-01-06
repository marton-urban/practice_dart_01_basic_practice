<<<<<<< HEAD
class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  E? removeLast() {
    if (head?.next == null) return pop();

    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }

    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  bool get isEmpty => head == null;

  @override
  Iterator<E> get iterator => _LinkedListIterator(this);

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}

class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(this._list);
  final LinkedList<E> _list;

  Node<E>? _currentNode;

  @override
  E get current => _currentNode!.value;

  bool _firstPass = true;

  @override
  bool moveNext() {
    if (_list.isEmpty) return false;

    if (_firstPass) {
      _currentNode = _list.head;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }

    return _currentNode != null;
  }
}

void main() {
  E? middleNode<E>(LinkedList<E> list) {
    if (list.isEmpty) return null;
    Node? possibleMiddle = list.head;
    var middlePos = 1;
    var i = 1;
    for (final element in list) {
      if (element == list.tail?.value) return possibleMiddle?.value;
      i++;
      if (i ~/ 2 + 1 > middlePos) {
        possibleMiddle = possibleMiddle?.next;
        middlePos++;
      }
    }
  }

  // Node<E>? middleNode<E>(LinkedList<E> list) {
  //   var slow = list.head;
  //   var fast = list.head;
  //   while (fast?.next != null) {
  //     fast = fast?.next?.next;
  //     slow = slow?.next;
  //   }
  //   return slow;
  // }
  // print(middleNode(list)?.value);

  final list = LinkedList<int>();
  list.push(7);
  list.push(6);
  list.push(5);
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);
  final stopwatch = Stopwatch()..start();
  print(middleNode(list));
  print('Executed in ${stopwatch.elapsed}');
}
=======
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
>>>>>>> c1224b242fa8597dba1b3234f65f9e356f907c16
