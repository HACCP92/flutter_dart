abstract interface class Thing {
  double get weight;
  set weight(double value);
}

abstract class Asset {
  String name;
  Asset({required this.name});
}

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  int price;
  double _weight;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}
