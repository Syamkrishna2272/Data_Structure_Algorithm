void main() {
  String a = "malayalam";
  String b = a.split('').reversed.join();
  if (a == b) {
    print("palindrome");
  } else {
    print("Not palindrome");
  }
}
