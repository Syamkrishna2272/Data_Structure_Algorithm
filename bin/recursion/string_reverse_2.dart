main() {
  String a = "Syam krishna";
  String b = a.split(' ').reversed.join();
  String res = rev(b);
  print(res);
}

rev(String str) {
  if (str.isEmpty) {
    return str;
  } else {
    return rev(str.substring(1)) + str[0];
  }
}
