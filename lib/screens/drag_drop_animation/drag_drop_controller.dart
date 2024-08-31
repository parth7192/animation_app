import 'package:flutter/material.dart';

class DragDropController extends ChangeNotifier {
  bool boxAccepted = false;

  void boxAccept() {
    boxAccepted = true;
    notifyListeners();
  }
}
