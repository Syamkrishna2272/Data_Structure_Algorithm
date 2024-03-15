main() {
  List a = [1, 2, 3, 4, 5];
  int b = sum(a, 0);
  print(b);
}

sum(List a, int i) {
  if (i == a.length) {
    return 0;
  } else {
    return a[i] + sum(a, i + 1);
  }
}
