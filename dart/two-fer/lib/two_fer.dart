String twoFer([String name = "you"]) {
  return "One for ${name.trim().isEmpty ? "you" : name}, one for me.";
}
