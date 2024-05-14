import 'package:flutter/material.dart';

class FunctionPro extends ChangeNotifier {
  Color? bgcolor;
  List<String> Items = ['red', 'blue', 'green'];
  String dropvalue = 'red';
  void changeValue(value) {
    dropvalue = value;
    if (dropvalue == 'red') {
      bgcolor = Colors.redAccent;
    } else if (dropvalue == 'blue') {
      bgcolor = Colors.blueAccent;
    } else if (dropvalue == 'green') {
      bgcolor = Colors.greenAccent;
    }
    notifyListeners();
  }
}
