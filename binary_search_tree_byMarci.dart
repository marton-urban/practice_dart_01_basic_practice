class Node<T> {
  Node(this.value);
  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;

  @override
  String toString() {
    final left = leftChild?.toString() ?? '';
    final parent = value.toString();
    final right = rightChild?.toString() ?? '';
    return '$left $parent $right';
  }
}

class BinarySearchTree<E extends Comparable<E>> {
  Node<E>? root;

  void insert(E value) {
    if (root == null) {
      root = Node(value);
    } else {
      _insertUnder(root!, value);
    }
  }

  void _insertUnder(Node<E> node, E value) {
    if (value.compareTo(node.value) < 0) {
      if (node.leftChild == null) {
        node.leftChild = Node(value);
      } else {
        _insertUnder(node.leftChild!, value);
      }
    } else {
      if (node.rightChild == null) {
        node.rightChild = Node(value);
      } else {
        _insertUnder(node.rightChild!, value);
      }
    }
  }

  @override
  String toString() => root.toString();
}

void main() {
  var tree = BinarySearchTree<num>();
  tree.insert(7);
  tree.insert(1);
  tree.insert(9);
  tree.insert(0);
  tree.insert(5);
  tree.insert(8);
  print(tree);
}
