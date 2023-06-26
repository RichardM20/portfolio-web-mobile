import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:personal_portfolio/controllers/button_animation_controller.dart';
import 'package:personal_portfolio/views/screens/index.dart';

void main() {
  Get.put(ButtonsAnimationController());
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
