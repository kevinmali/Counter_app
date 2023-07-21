import 'package:counterapp/Model/counter_model.dart';
import 'package:flutter/widgets.dart';

class counterprovide extends ChangeNotifier {
  Countemodel counter = Countemodel(counter: 0);
  void increment() {
    ++counter.counter;
    notifyListeners();
  }

  void Decrement() {
    --counter.counter;
    notifyListeners();
  }
}
