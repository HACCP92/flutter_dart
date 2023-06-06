class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아서 가격 기준인 오름차순으로 정리하여 이름을 나열하시오
  transactions.where((e) => e.year == 2011).toList()
    ..sort((a, b) => a.value.compareTo(b.value))
    ..forEach((e) => print('이름 : ${e.trader.name}: 도시 : ${e.value}'));
  //..카스케이딩 연산자로 연속적으로 사용가능해서 동일한 객체에 사용하면 간결하게 작성가능합니다.

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  final modeunCity = transactions.map((e) => e.trader.city).toSet();
  print('거래자가 근무하는 모든 도시 : ${modeunCity}');
  // transactions  list에서 도시를 추출하여 중복제거 한뒤 해당 도시들 리스트 추가해서 출력을 하지만
  // list 추가적인 코드가 필요해서 람다식 도움을 받았습니다.

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬해서 나열하시오
  transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      .toSet()
      .toList()
    ..sort()
    ..forEach((e) => print('케임브리지 근무 거래자 : ${e}'));

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬해서 나열하시오
  final nameTrader = transactions.map((e) => e.trader.name).toSet().toList()
    ..sort()
    ..forEach((e) => print('알파벳순으로 정렬 ${e}'));
  // 5. 밀라노에 거래자가 있습니까?
  final traderPerson = transactions.any((e) => e.trader.city == 'Milan');
  print('밀라노에 거래자 : ${traderPerson}');
  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  transactions.where((e) => e.trader.city == 'Cambridge').forEach((e) {
    print('케임브리지 트랜잭션값 : ${e.value}');
    print('케임브리지 트랜잭션값 : ${e.trader}');
    print('케임브리지 트랜잭션값 : ${e.year}');
  });

  // 7. 전체 트랜잭션 중 최대값은 얼마인가요?
  final maxValue =
      transactions.map((e) => e.value).reduce((a, b) => a > b ? a : b);
  print('최대값 : ${maxValue}');

  // 8. 전체 트랜잭션 중 최소값은 얼마인가요?
  final minValue =
      transactions.map((e) => e.value).reduce((a, b) => a < b ? a : b);
  print('최소값 : ${minValue}');
}
