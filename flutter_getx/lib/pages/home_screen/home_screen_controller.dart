import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  Rx<Color> backgroundColor = Colors.white.obs;

  void changeBackgroudColor() {
    if (backgroundColor.value == Colors.white) {
      backgroundColor.value = Colors.red;
    } else {
      backgroundColor.value = Colors.white;
    }
  }
}
