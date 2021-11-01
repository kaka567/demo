abstract class Performer {
  void perform();
}

mixin Dancer {
  void perform() {
    print('Dancer');
  }
}

mixin Singer {
  void perform() {
    print('Singer');
  }
}

class Musician extends Performer with Singer, Dancer {}

main(List<String> args) {
  final music = Musician();
  music.perform();
}
