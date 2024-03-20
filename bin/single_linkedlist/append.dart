main() {
  List<int> arr = [10, 25, 30, 68, 45];
  for (int i = 0; i < arr.length; i++) {
    bc(arr[i]);
  }
  append(25);
  dis();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

bc(int data) {
  node newnode = node(data);
  if (head == null) {
    head = newnode;
  } else {
    tail?.next = newnode;
  }
  tail = newnode;
}

dis() {
  node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

append(int data) {
  node newnode = node(data);
  if (head == null) {
    head = newnode;
  } else {
    node? temp = head;
    while (temp?.next != null) {
      temp = temp?.next;
    }
    temp?.next=newnode;
  }
  tail=newnode;
}
