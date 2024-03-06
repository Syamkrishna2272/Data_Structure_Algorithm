main() {
  add(10);
  add(20);
  add(30);
  add(40);
  add(50);
  add(60);
  add(70);
  add(80);
  add(90);
  delete(70);
  display();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

add(int data) {
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
    tail = temp;
    tail?.next = null;
  }

  prev?.next = temp.next;
}
