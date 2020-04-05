class LettersPoints {
  Set<String> letters;
  int points;

  LettersPoints(this.points, this.letters);
}

var pointing = {
  LettersPoints(1, {"A", "E", "I", "O", "U", "L", "N", "R", "S", "T"}),
  LettersPoints(2, {"D", "G"}),
  LettersPoints(3, {"B", "C", "M", "P"}),
  LettersPoints(4, {"F", "H", "V", "W", "Y"}),
  LettersPoints(5, {"K"}),
  LettersPoints(8, {"J", "X"}),
  LettersPoints(10, {"Q", "Z"})
};

int score([String word = ""]) {
  var splitWord = word.split("").map((letter) => letter.toUpperCase());

  return pointing
      .map((el) => splitWord.where(el.letters.contains).length * el.points)
      .reduce((total, subTotal) => total += subTotal);
}
