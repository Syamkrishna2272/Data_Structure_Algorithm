main() {
  List<int> a = [1, 2, 3, 4, 5, 6];
  linear(a, 5);
}

linear(List<int> a, int target) {
  for (int i = 0; i < a.length; i++) {
    if (a[i] == target) {
      print("element found index is $i");
      return;
    }
  }
  print("Not element");
}
