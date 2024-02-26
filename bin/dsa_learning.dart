main() {
  Newnode(10);
  Newnode(25);
  Newnode(30);
  Newnode(45);
  delete(25);
  display();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

Newnode(int data) {
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

//deleting particular element

delete(int data) {
  node? temp = head;
  node? prev;
  if (temp != null && temp.data == data) {
    head = temp.next;
    return;
  }
  while (temp != null && temp.data != data) {
    prev = temp;
    temp = temp.next;
  }
  if (temp == null) {
    return;
  }
  if (temp == tail) {
    tail = prev;
    tail?.next = null;
    return;
  }
  prev?.next = temp.next;
}
