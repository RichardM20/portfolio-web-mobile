import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';
import 'package:personal_portfolio/utils/typography.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/carousel/button_next_page.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/carousel/button_previus_page.dart';
import 'package:personal_portfolio/views/screens/repositories/widgets/carousel/carousel_content.dart';

import 'buttons_content.dart';
import 'project_decoration_content.dart';
import 'project_imgage_content.dart';
import 'project_info_content.dart';

class RepositoriesBody extends StatelessWidget {
  const RepositoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const Text(
            "Projects",
            style: mediumSecondaryTextStyle,
          ),
          CarouselContent(),
        ],
      ),
    );
  }
}
