main() {
  List<int> arr = [1, 2, 5, 8, 9, 7];
  var ab = c(arr, 5, 9);
  print(ab);
}

c(List<int> arr, int t1, int t2) {
  bool target1 = false;
  bool target2 = false;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == t1) {
      target1 = true;
    } else if (arr[i] == t2) {
      target2 = true;
    }
    return target1&&target2;
  }
}
