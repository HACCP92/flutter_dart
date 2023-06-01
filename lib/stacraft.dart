abstract interface class Terran {}

abstract interface class Mechanic {}

abstract interface class Zerg {}

abstract interface class Protoss {}

abstract interface class Bionic {
  void unitCase(
      {required Terran terran,
      required Mechanic mechanic,
      required Zerg zerg,
      required Protoss protoss,
      required Bionic bionic}) {}
}

abstract class Medic {
  void healing() {
    print('Medic이 생물을 치료합니다');
  }

  void fix() {
    print('Medic이 수리를 진행합니다');
  }
}

class Marine extends Medic implements Bionic, Terran {
  @override
  void healing() {
    super.healing();
    print('메딕이 생물을 치료합니다');
  }

  @override
  void fix() {
    super.fix();
    print('메딕이 SCV를 수리합니다');
  }

  @override
  void unitCase(
      {required Terran terran,
      required Mechanic mechanic,
      required Zerg zerg,
      required Protoss protoss,
      required Bionic bionic}) {
    // TODO: implement unitCase
  } // 이부분 마린 문제 해결하려고 하니까 todo가 나와서 물어볼것!
}

class Tank implements Terran, Mechanic {}

class Vulture implements Terran, Mechanic {}

class SCV extends Medic implements Terran, Mechanic {
  void collect() {
    print('자원을 채취합니다');
  }
}
