import '../bin/hero.dart';

void main() {
  // 새로운 인스턴스
  Hero hero = Hero('슈퍼맨', 100);
  Hero hero2 = Hero('베트맨', 50);
  var hero3 = Hero('토르', 100);

  final hero4 = Hero('아쿠아맨', 100);
  hero.attack();

  final sword = Sword(name: '불의검', damege: 100);
}
