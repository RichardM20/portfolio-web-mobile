import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';
import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/views/screens/index.dart';

void main() {
  //inicializacion del controlador
  Get.put(SocialsButtonsActionController());
  Get.put(NavbarController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: Index(),
    );
  }
}
