import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    final x = getScreenHeight() / pixels;
    return getScreenHeight() /x;
  }

  static getWidth(double pixels) {
    final x = getScreenWidth() / pixels;
    return getScreenWidth() /x;
  }
}
