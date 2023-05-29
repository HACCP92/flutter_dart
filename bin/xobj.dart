abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

// void main() {
//   X obj = A();
//   obj.a();
// }

// a(),b(),c()이중 a()만 되는이유는 X인터페이스는 a()메서드만 선언되어있고 Y클래스에 오버라이드한 b,c()는 접근이 어렵다
void main() {
  // Y y1 = A();
  // Y y2 = B();
  // y1.a();
  // y2.a();

//호출 되는것은 Aa, Ba으로 A,B모두 Y클래스를 상속받아서 Y타입으로 할당이 된다.

  final A a = A();
  final B b = B();

  List<Y> ab = [a, b];

  ab.forEach((i) {
    i.b();
  });
}
