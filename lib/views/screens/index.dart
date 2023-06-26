import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'repositories/repositories_screen.dart';
import 'welcome/widgets/navbar/navbar_content.dart';
import 'welcome/wlecome_screen.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Column(
          children: [
            const NavBarContent(),
            Expanded(
              child: SizedBox(
                height: Get.height * 0.8,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    WelcomeContent(),
                    RepositoriesContent(),
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
