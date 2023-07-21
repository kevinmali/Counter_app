import 'package:counterapp/Model/theme_model.dart';
import 'package:flutter/material.dart';

class themeprovider extends ChangeNotifier {
  thememodel theme = thememodel(isdark: true);

  void changetheme() {
    theme.isdark = !theme.isdark;

    notifyListeners();
  }
}
