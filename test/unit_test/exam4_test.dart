import 'package:test/test.dart';

class Reverse {
  String reverseString(String string) {
    return string.split('').reversed.join('');
  }
}

void main() {
  test('reverse test', () {
    Reverse reverse = Reverse();

    expect(reverse.reverseString(''), '');
    expect(reverse.reverseString('Hello'), 'olleH');
    expect(reverse.reverseString('Helloo'), 'oolleH');
    expect(reverse.reverseString('Hellooo'), 'ooolleH');
  });
}
