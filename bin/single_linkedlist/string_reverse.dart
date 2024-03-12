main() {
  add('a');
  add('b');
  add('c');
  add('d');
  add('e');
  add('g');
  add('h');
  add('i');
  rev();
  display();
}

class node {
  String? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

add(String data) {
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
