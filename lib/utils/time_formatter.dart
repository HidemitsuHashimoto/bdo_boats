String formatterNumber(int number) {
  String stringNumber = number.toString();
  if (stringNumber.length == 1) {
    return stringNumber.padLeft(2, '0');
  }
  return stringNumber;
}
