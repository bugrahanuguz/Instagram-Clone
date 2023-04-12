import 'package:flutter/material.dart';

class ProfileViewModel extends ChangeNotifier {
  int page = 0;

  setPage(int p) {
    page = p;
    notifyListeners();
  }
}
