main() {
  List reverse = [10, 20, 35, 50, 40];
  int start = 0;
  int end = reverse.length - 1;

  while (start < end) {
    var temp = reverse[start];
    reverse[start] = reverse[end];
    reverse[end] = temp;

    start++;
    end--;
  }
  print(reverse);
}
