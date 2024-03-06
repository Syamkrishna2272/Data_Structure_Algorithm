main() {
  Addnode(10);
  Addnode(20);
  Addnode(30);
  Addnode(40);
  insertAfter(30, 35);
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

insertAfter(int nextTo, data) {
  node newnode = node(data);
  node? temp = head;
  while (temp != null && temp.data != nextTo) {
    temp = temp.next;
  }
  if (temp == null) {
    return;
  }
  if (temp == tail) {
    tail?.next = newnode; 
    tail = newnode;
    return;
  }
  newnode.next = temp.next;
  temp.next = newnode;
}
