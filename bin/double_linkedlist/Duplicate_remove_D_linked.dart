main() {
  Addnode(10);
  Addnode(10);
  Addnode(10);
  Addnode(40);
  Addnode(10);
  Addnode(25);
  Addnode(25);
  Addnode(40);
  Addnode(15);
  removedupli();
  display();
}

class node {
  int? data;
  node? next;
  node? prev;
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

removedupli() {
  node? current = head;
  while (current != null) {
    node? nxt = current.next;
    while (nxt != null && nxt.data == current.data) {
      nxt = nxt.next;
    }
    current.next = nxt;
    if (nxt == tail && current.data == nxt?.data) {
      tail = current;
      tail?.next = null;
    }
    current = nxt;
  }
}
