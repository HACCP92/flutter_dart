import 'package:dart_basic/unit_test/exam1.dart';

void main() {
  // 준비..
  Bank bank1 = Bank.fromJson(
      {"name": "홍길동", "address": "서울시 어쩌구 저쩌구", "phone": "010-1111-2222"});

  // 실행 및 결과 비교
  if (bank1.name == "홍길동" &&
      bank1.address == "서울시 어쩌구 저쩌구" &&
      bank1.phone == "010-1111-2222") {
    print("테스트 통과합니다");
  } else {
    print("테스트 실패합니다");
  }
}
