import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';
import 'package:personal_portfolio/utils/typography.dart';

import 'buttons_content.dart';
import 'imgage_content.dart';
import 'info_project_content.dart';
import 'project_content_decoration.dart';

class RepositoriesBody extends StatelessWidget {
  RepositoriesBody({super.key});
  final _contrller = ProjectsController.to;
  @override
  Widget build(BuildContext context) {
    print("map : ${_contrller.projectsList[0].storesLinks}");
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const Text(
            "Projects",
            style: mediumSecondaryTextStyle,
          ),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: List.generate(
                _contrller.projectsList.length,
                (index) => ProjectContentDecoration(
                  indexSelected: index.obs,
                  widget: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ProjectImagecontent(
                            asset: _contrller.projectsList[index].images!,
                          ),
                          ProjectInfoContent(
                            nameProject: _contrller.projectsList[index].name!,
                            infoProject:
                                _contrller.projectsList[index].description!,
                            technologies:
                                _contrller.projectsList[index].technologies!,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ActionButtonProject(
                                isHover: false.obs,
                                textButton: 'View code',
                                onTap: () {},
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              ActionButtonProject(
                                isHover: false.obs,
                                textButton: 'Demo',
                                onTap: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
