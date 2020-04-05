class ResistorColorDuo {
  final colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];

  int value(List<String> codes, [int acc = 0]) {
    acc *= 10;
    acc += colors.indexOf(codes.first);
    codes.remove(codes.first);

    return codes.isEmpty ? acc : value(codes, acc);
  }
}
