main() {
  List<String> a = ['s', 'y', 'a', 'm', 'k', 'r', 'i', 's', 'h', 'n', 'a'];
  for (int i = 0; i < a.length; i++) {
    check(a[i]);
  }
  rev();
  dis();
}

class node {
  String? data;
  node? next;
  node(this.data);
}

node? head;
node? tail;

check(String data) {
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
