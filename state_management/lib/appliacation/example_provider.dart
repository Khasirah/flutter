import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get getCount => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
