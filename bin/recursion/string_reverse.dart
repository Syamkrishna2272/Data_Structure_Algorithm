main() {
  String a = "helloworld";
  String rev = reverseString(a);
  print(rev);
}

reverseString(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return reverseString(str.substring(1)) + str[0];
  }
}
