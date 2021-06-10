import 'package:flutter/material.dart';

class CountModelNotifier with ChangeNotifier {
  int count;
  CountModelNotifier({this.count = 1});

  Future<void> increment() async {
    count++;
    print('计数改变：$count');
    notifyListeners();
  }
}
