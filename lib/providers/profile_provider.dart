import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  int currentPage = 0;

  onPageChange(int value) {
    currentPage = value;
    notifyListeners();
  }
}
