import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';
import 'package:personal_portfolio/utils/typography.dart';

class RepositoriesBody extends StatelessWidget {
  RepositoriesBody({super.key});
  final _contrller = ProjectsController.to;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const Text(
            "Projects",
            style: bodySecondaryTextStyle,
          ),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: List.generate(
                _contrller.projectsList.length,
                (index) => Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.all(1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height * 0.1,
                      ),
                      Text('${_contrller.projectsList[index].name}'),
                      Text('${_contrller.projectsList[index].description}'),
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
