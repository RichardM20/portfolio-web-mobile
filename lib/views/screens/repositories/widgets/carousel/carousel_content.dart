import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/buttons_content.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/project_decoration_content.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/project_imgage_content.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/project_info_content.dart';

import 'button_next_page.dart';
import 'button_previus_page.dart';

class CarouselContent extends StatelessWidget {
  CarouselContent({super.key});
  final _contrller = ProjectsController.to;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              viewportFraction: Get.width < 600 ? 0.6 : 0.32,
              autoPlay: false,
              padEnds: true,
              reverse: false,
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
            ),
            carouselController: _contrller.carouselController,
            items: List.generate(
              _contrller.projectsList.length,
              (index) => ProjectContentDecoration(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProjectImagecontent(
                      asset: _contrller.projectsList[index].images!,
                    ),
                    ProjectInfoContent(
                      nameProject: _contrller.projectsList[index].name!,
                      infoProject: _contrller.projectsList[index].description!,
                      technologies:
                          _contrller.projectsList[index].technologies!,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ActionButtonProject(
                      isHover: false.obs,
                      textButton: 'View code',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const ButtonNextPage(),
          const ButtonPreviusPage(),
        ],
      ),
    );
  }
}
