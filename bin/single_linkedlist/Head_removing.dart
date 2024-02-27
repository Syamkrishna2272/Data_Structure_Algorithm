main() {
  Addnode(10);
  Addnode(20);
  Addnode(30);
  Addnode(40);
  Addnode(50);
  removeHead();
  display();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

Addnode(int data) {
  node newNode = node(data);
  if (head == null) {
    head = newNode;
  } else {
    tail?.next = newNode;
  }
  tail = newNode;
}

display() {
  node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

removeHead() {
  node? temp = head;
  head = temp?.next;
}
