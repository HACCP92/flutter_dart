enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E extends KeyType> {
  E? _keyBox;
  KeyType _keyType;
  int _count = 0;
  StrongBox(
    this._keyType,
  );

  void put(E keyBox) {
    _keyBox = keyBox;
  }

  KeyType keyType = KeyType.finger; //이건 물어보기
  E? get() {
    _count + 1;
    switch (_keyType) {
      case KeyType.padlock:
        if (_count > 1024) {
          return _keyBox;
        }
        break;
      case KeyType.button:
        if (_count > 10000) {
          return _keyBox;
        }
        break;
      case KeyType.dial:
        if (_count > 30000) {
          return _keyBox;
        }
        break;
      case KeyType.finger:
        if (_count > 1000000) {
          return _keyBox;
        }
        break;
    }
    return null;
  }
}
