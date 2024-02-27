main() {
  Addnode(15);
  Addnode(25);
  Addnode(30);
  removeTail();
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
  node newnode = node(data);
  if (head == null) {
    head = newnode;
  } else {
    tail?.next = newnode;
  }
  tail = newnode;
}

display() {
  node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

removeTail() {
  node? temp = head;
  node? prev = null;
  while (temp != null && temp.next != null) {
    prev = temp;
    temp = temp.next;
  }
  tail = prev;
  tail?.next = null;
}
