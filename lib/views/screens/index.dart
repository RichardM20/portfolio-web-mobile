import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/views/screens/aboutme/aboutme_content.dart';
import 'package:personal_portfolio/views/screens/testimonials/testimonials_content.dart';

import 'repositories/repositories_content.dart';
import 'welcome/widgets/navbar/navbar_content.dart';
import 'welcome/welcome_content.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final _controller = NavbarController.to;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width > 600 ? 50 : 10,
        ),
        child: Column(
          children: [
            NavBarContent(),
            Expanded(
              child: SizedBox(
                height: Get.height * 0.8,
                child: PageView(
                  controller: _controller.pageController,
                  scrollDirection: Axis.vertical,
                  children: [
                    const WelcomeContent(),
                    RepositoriesContent(),
                    const TestimonialsContent(),
                    const AboutmeContent()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
