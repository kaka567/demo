class KKNet {
  KKNet._();
  static KKNet? _instance;
  static KKNet getInstance() {
    if (_instance == null) {
      _instance = KKNet._();
    }
    return _instance!;
  }
}
