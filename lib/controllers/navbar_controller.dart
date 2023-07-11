import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controlador del navbar
class NavbarController extends GetxController {
  static NavbarController get to => Get.find<NavbarController>();
  // //
  // List<GlobalKey> containerKeys = [
  //   GlobalKey(),
  //   GlobalKey(),
  //   GlobalKey(),
  // ];
  PageController pageController = PageController(
    initialPage: 0,
  );
}
