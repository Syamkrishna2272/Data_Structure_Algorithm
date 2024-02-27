main() {
  Newnode(10);
  Newnode(25);
  Newnode(30);
  Newnode(45);
  rev();
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

rev() {
  node? prev = null;
  node? curr = head;
  while (curr != null) {
    node? nxt = curr.next;
    curr.next = prev;
    prev = curr;
    curr = nxt;
  }
  head = prev;
}
