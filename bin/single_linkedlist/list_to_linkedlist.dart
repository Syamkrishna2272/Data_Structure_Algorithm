class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? head;
Node? tail;

addnodes(int data) {
  Node newNode = Node(data);

  if (head == null) {
    head = newNode;
  } else {
    tail!.next = newNode;
  }
  tail = newNode;
}

display() {
  Node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

main() {
  List<int> arr = [10, 20, 30, 30, 40, 50];
  for (int i = 0; i < arr.length; i++) {
    addnodes(arr[i]);
  }
  display();
}
