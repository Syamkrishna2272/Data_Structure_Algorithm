main() {
  Addnewnode(10);
  Addnewnode(15);
  Addnewnode(40);
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

Addnewnode(int data) {
  node newNode = node(data);
  if (head == null) {
    head = newNode ;
  } else { 
    tail?.next = newNode;
    newNode.prev = tail;
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
