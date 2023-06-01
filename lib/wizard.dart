class Wizard {
  String name;
  int hp;
  int mp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
    required this.wand,
  }) {
    if (name.length < 3) {
      throw Exception('마법사 이름은 3글자 이상이여야 합니다.');
    }
    if (wand == null) {
      throw Exception('마법사의 지팡이는 null이 될수 없습니다');
    }
    if (mp < 0) {
      throw Exception('마법사의 mpsms 0 이상이어야 합니다');
    }
    if (hp < 0) {
      throw Exception('마법사의 hp가 0보다 작으면 에러가 아닙니다')
    }
  }
}

class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  }) {
    if (name.length < 3) {
      throw Exception('지팡이 이름은 3글자 이상이여야 합니다');
    }
    if (power < 0.5 || power > 100) {
      throw Exception('지팡이 마력은 0.5보다 크고 100 이하여야 합니다');
    }
  }
}
