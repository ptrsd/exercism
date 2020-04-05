bool isValid(String code) {
  if (![code.length - 1, -1].contains(code.indexOf("X"))) return false;

  var isbn = code.split("")
      .where((c) => "0123456789X".contains(c))
      .map((c) => c == "X" ? 10 : int.parse(c))
      .toList()
      .asMap();

  if (isbn.length != 10) return false;

  var sum = isbn.entries
      .fold(0, (int acc, MapEntry<int, int> el) => acc += el.value * (10 - el.key));

  return sum % 11 == 0;
}