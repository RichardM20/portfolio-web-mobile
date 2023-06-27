import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:personal_portfolio/controllers/font_controller.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';
import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/views/screens/index.dart';

void main() {
  //inicializacion del controlador
  Get.put(SocialsButtonsActionController());
  Get.put(NavbarController());
  Get.put(ProfileAndExperienceSkillsController());
  Get.put(ResponsiveController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: LayoutBuilder(builder: (context, constraints) {
        ResponsiveController.to.updateFontSize(constraints.maxWidth);
        return const Index();
      }),
    );
  }
}
