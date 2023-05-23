import 'dart:math';

class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;
  String name;
  int hp;
  int mp;

  Cleric({required this.name, this.hp = 50, this.mp = 10});

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
    int beforeMp;
    int afterMp;
    beforeMp = seconds + Random().nextInt(3);
    afterMp = mp + beforeMp;
    print('beforeMp: ${beforeMp} 만큼 회복 되었습니다');
    print('afterMp: ${afterMp} 만큼 남았습니다');
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
