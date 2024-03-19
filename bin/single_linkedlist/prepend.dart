main() {
  List<int> arr = [10, 20, 36, 25, 15, 50];
  for (int i = 0; i < arr.length; i++) {
    sam(arr[i]);
  }
  prepend(55);
  prepend(60);
  dis();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

sam(int data) {
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

prepend(int data) {
  node newnode = node(data);
  newnode.next = head;
  head = newnode;
}
