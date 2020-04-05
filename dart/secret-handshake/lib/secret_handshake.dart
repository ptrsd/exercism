class SecretHandshake {
  var cmds = {1: "wink", 2: "double blink", 4: "close your eyes", 8: "jump"};

  List<String> commands(int i, [List<String> acc, bool rev = false]) {
    acc ??= new List<String>();

    if (i == 0) {
      return rev ? acc : acc.reversed.toList();
    }

    if (i >= 16) {
      return commands(i - 16, acc, true);
    }

    int last = cmds.keys.lastWhere((k) => k <= i);
    acc.add(cmds[last]);

    return commands(i % last, acc, rev);
  }
}