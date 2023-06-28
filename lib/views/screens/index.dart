import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/views/screens/contactme/contact_me_screen.dart';

import 'repositories/repositories_screen.dart';
import 'welcome/widgets/navbar/navbar_content.dart';
import 'welcome/wlecome_screen.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
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
                  scrollDirection: Axis.vertical,
                  children: const [
                    WelcomeContent(),
                    RepositoriesContent(),
                    ContactmeContent()
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
