import '../bin/slime.dart';
import 'dart:math';

class Hero {
  int hp;

  Hero({required this.hp});
}

class PoisonSlime extends Slime {
  final attackPoison = 5;

  PoisonSlime(String suffix) : super(suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    int heroHp;

    if (attackPoison > 0) {
      print('추가로 독 포자를 살포했다!');
      heroHp = hero.hp - Random().nextInt(6);
      print('영웅의 체력: $heroHp 남았다');
    } else {
      print('독 공격의 남은 횟수: $attackPoison\n');
    }
  }
}
