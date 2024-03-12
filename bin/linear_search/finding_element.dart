main() {
  List<int> find = [1, 2, 3, 4, 5, 6];
  checking(find, 30);
}

checking(List<int> find, int target) {
  for (int i = 0; i < find.length; i++) {
    if (find[i] == target) {
      print("Element found  $i");
      return;
    }
  }
  print("not found in the list");
}