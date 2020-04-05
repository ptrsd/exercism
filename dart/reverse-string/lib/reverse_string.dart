var reverse = ([String word = ""]) =>
    word.isEmpty ? word : word.split("").reduce((acc, el) => acc = el + acc);
