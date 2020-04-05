class Isogram {
  bool isIsogram([String s = ""]) {
    s = s.replaceAll(" ", "").replaceAll("-", "").toLowerCase();
    var x = s.split("").toSet();

    return x.length == s.length;
  }
}
