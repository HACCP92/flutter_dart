class Hero {
  // field
  // member variable (멤버 변수)
  // global variable (전역 변수)
  String name = '';
  int hp = 100;
  Sword? sword; // 칼이 있을 수도 있고 없을수도 있다

  // 생성자 (생성하는 방법)
  Hero({required this.name, required this.hp});
  // 클래스 안에 작성한 함수 = 메서생
  void attack() {
    // 공격
  }

  void run() {}

  void sleep() {
    hp = 100;
    print('$name 은 잠을 자고 회복했다 ');
  }
}
