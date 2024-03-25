main() {
  List<int> a = [
    10,
    25,
    30,
    40,
    50,
    55,
  ];
  for (int i = 0; i < a.length; i++) {
    sl(a[i]);
  }
  mid();
  dis();
}

class node {
  int? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

sl(int data) {
  node newNode = node(data);
  if (head == null) {
    head = newNode;
  } else {
    tail?.next = newNode;
  }
  tail = newNode;
}

dis() {
  node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

mid() {
  node? le = head;
  node? ri = head;
  while (ri != null && ri.next != null) {
    le = le?.next;
    ri = ri.next?.next;
  }
  print("mid element is ${le?.data}");
}
