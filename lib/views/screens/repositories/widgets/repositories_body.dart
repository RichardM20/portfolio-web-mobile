import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';
import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/carousel_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/title_content.dart';

class RepositoriesBody extends StatelessWidget {
  RepositoriesBody({super.key});
  final _contrller = ProjectsController.to;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.5,
      child: Obx(
        () => _contrller.loading.value
            ? Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                  backgroundColor: primaryColor30,
                ),
              )
            : SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const GenericSectionTitle(
                      title: "Projects",
                    ),
                    CarouselContent()
                  ],
                ),
              ),
      ),
    );
  }
}
