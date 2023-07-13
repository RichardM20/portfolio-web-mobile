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
  late ScrollController scrollController;
  RxDouble welcomeOpacity = 1.0.obs;
  RxDouble repositoriesOpacity = 1.0.obs;
  RxDouble testimonialsOpacity = 1.0.obs;
}
