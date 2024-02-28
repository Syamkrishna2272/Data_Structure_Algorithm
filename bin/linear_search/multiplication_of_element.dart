main() {
  List<int> find = [1, 2, 3, 6, 9, 8, 7];
  checking(find, 0);
}

checking(List<int> find, int a) {
  for (int i = 0; i < find.length; i++) {
    if (find[i] % 5 == 0) {
      print("Element found  ${find[i]}");
      a++;
    }
  }
  if (a == 0) {
    print("no result");
  }
}
  