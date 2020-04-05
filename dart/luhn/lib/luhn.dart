class Luhn {
  bool valid(String s) {
    var sum = 0;
    var list = s.split("").toList().where((s) => s != " ");
    var digitsOnly = list.every((el) => int.tryParse(el) != null);
    if (!digitsOnly || list.length <= 1) {
      return false;
    }

    var split = list.map(int.parse).toList();
    if (list.length % 2 != 0 && split[0] == 0) {
      split.removeAt(0);
    }

    for (int i = 0; i < split.length; i++) {
      var double = i % 2 == 0 ? split[i] * 2 : split[i];
      sum += double > 9 ? double - 9 : double;
    }

    return sum % 10 == 0;
  }
}
