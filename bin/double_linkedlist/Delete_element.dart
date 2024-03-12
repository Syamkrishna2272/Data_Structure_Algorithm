main() {
  nodeadd(10);
  nodeadd(20);
  nodeadd(30);
  nodeadd(40);
  nodeadd(50);
  nodeadd(60);
  delete(60);
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

nodeadd(int data) {
  node newnode = node(data);
  if (head == null) {
    head = newnode;
  } else {
    tail?.next = newnode;
    newnode.prev = tail;
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
    tail = prev;
    tail?.next = null;
    return;
  }
  prev?.next = temp.next;
}
