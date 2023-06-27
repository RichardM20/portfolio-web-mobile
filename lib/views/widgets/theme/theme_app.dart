import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

ThemeData lightTheme = ThemeData().copyWith();

class FontStyles {
  static String boldStyle = "RobotoCondensed-Bold";
  static String regularStyle = "RobotoCondensed-Regular";
  static String lightStyle = "RobotoCondensed-Light";

  static RxDouble titleSize = 50.0.obs;
  static RxDouble subtitleSize = 35.0.obs;
  static RxDouble paragraphSize = 20.0.obs;
  static RxDouble navbarTextActionSize = 18.0.obs;
  static RxDouble mobileTitleSize = 50.0.obs;
  static RxDouble mobileSubtitleSize = 35.0.obs;
  static RxDouble mobileParagraphSize = 20.0.obs;
  static RxDouble mobileNavbarTextActionSize = 18.0.obs;
}
