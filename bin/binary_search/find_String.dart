main() {
  List<String> a = ['a', 'b', 'c', 'd', 'e', 'f'];
  dynamic ab = check(a, 'e');
  print(ab);
}

check(List<String> a, String target) {
  int left = 0;
  int right = a.length - 1;
  while (left < right) {
    int mid = (right + left) ~/ 2;
    int res = a[mid].compareTo(target);
    if (res == 0) {
      return a[mid];
    } else if (res < 0) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}
