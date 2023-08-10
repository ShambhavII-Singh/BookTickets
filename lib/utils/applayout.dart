import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeightProportion(int pixels) {
    double divisor = (pixels / 816);
    return Get.height * divisor;
  }

  static getWidthProportion(int pixels) {
    double divisor = (pixels / 432);
    return Get.width * divisor;
  }
  
  static divisor(int number) {
    return ((number/432)*AppLayout.getScreenWidth()).floor();
  } 
  
}
