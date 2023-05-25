import 'dart:math';

class Cleric {
  static const maxHp = 50;
  static const maxMp = 10;
  String name;
  int hp;
  int mp;

  Cleric(
      this.name{
        this.hp = maxHp,
        this.mp = maxMp,
  });

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('최대로 hp가 회복되었습니다');
    } else {
      print('mp가 부족합니다');
    }
  }

  void pray(int seconds) {
    final prevMp = mp;

    final beforeMp = seconds + Random().nextInt(3);
    final afterMp = mp + beforeMp;
    mp = min(afterMp, maxMp);

    return afterMp - prevMp;
  }
}

void main() {
  final cleric1 = Cleric(name: '아서스', hp: 40, mp: 5);
  final cleric2 = Cleric(name: '아서스', hp: 35);
  final cleric3 = Cleric(name: '아서스');

  print('${cleric1.name}, ${cleric1.hp}, ${cleric1.mp}');
  print('${cleric2.name}, ${cleric2.hp}, ${cleric2.mp}');
  print('${cleric3.name}, ${cleric3.hp}, ${cleric3.mp}');
}
