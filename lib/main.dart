import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:personal_portfolio/controllers/font_controller.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';
import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/views/screens/index.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

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
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1900,
        minWidth: 480,
        defaultScale: true,
        defaultScaleFactor: 1.0,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1900, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      home: const Index(),
    );
  }
}
