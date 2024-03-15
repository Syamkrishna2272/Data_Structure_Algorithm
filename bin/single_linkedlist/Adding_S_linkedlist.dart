main() {
  addnodeNewvalue(5);
  addnodeNewvalue(10);
  addnodeNewvalue(15);
  addnodeNewvalue(20);
  display();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

addnodeNewvalue(int data) {
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

