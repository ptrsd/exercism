class Minesweeper {
  List<String> annoted;

  Minesweeper(List<String> fieldRows) {
    var list = fieldRows.map((row) => row.split("")).toList();
    annoted = new List.generate(fieldRows.length, (_) => "");

    var hasMine = (int y, int x) => list[y][x] == "*";
    var upperBound = (int l) => l < list.length;
    var lowerBound = (int l) => l >= 0;

    for (var yp = -1, y = 0, yn = 1; y < list.length; yp++, y++, yn++) {
      for (var xp = -1, x = 0, xn = 1; x < list[y].length; xp++, x++, xn++) {
        if (list[y][x] != "*") {
          var yUpperBound = (int l) => l < list[y].length;

          var mines = [
            lowerBound(yp) && lowerBound(xp) && hasMine(yp, xp),
            lowerBound(yp) && hasMine(yp, x),
            lowerBound(yp) && yUpperBound(xn) && hasMine(yp, xn),
            lowerBound(xp) && hasMine(y, xp),
            yUpperBound(xn) && hasMine(y, xn),
            upperBound(yn) && lowerBound(xp) && hasMine(yn, xp),
            upperBound(yn) && hasMine(yn, x),
            upperBound(yn) && yUpperBound(xn) && hasMine(yn, xn)
          ].where((_) => _).length;

          annoted[y] = mines == 0
              ? annoted[y] + " "
              : annoted[y] + mines.toString();
        } else {
          annoted[y] = annoted[y] + "*";
        }
      }
    }
  }
}
