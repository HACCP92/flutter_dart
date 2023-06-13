import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class FindMax {
  int findMax(List<int> num) {
    return num.reduce((first, second) => first > second ? first : second);
  }
}

void main() {
  test('최대값 test', () {
    FindMax findMax = FindMax();
    List<int> a = [2, 5, 1, 9, 3];
    List<int> b = [4, 6, 1, 10, 3];
    List<int> c = [1, 5, 1, 7, 4];
    List<int> d = [8, 5, 1, 11, 3];
    List<int> e = [5, 7, 1, 9, 6];

    expect(findMax.findMax(a), 9);
    expect(findMax.findMax(b), 10);
    expect(findMax.findMax(c), 7);
    expect(findMax.findMax(d), 11);
    expect(findMax.findMax(e), 9);
  });
}
