import 'package:test/test.dart';

class IsEven {
  bool isEven(int num) {
    return num % 2 == 0;
  }
}

void main() {
  test('짝수 test', () {
    IsEven even = IsEven();
    expect(even.isEven(1), false);
    expect(even.isEven(2), true);
    expect(even.isEven(3), false);
    expect(even.isEven(4), true);
  });
}
