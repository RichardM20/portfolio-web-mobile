import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/typography.dart';

import 'technologies_list_content.dart';

class ProjectInfoContent extends StatelessWidget {
  const ProjectInfoContent({
    super.key,
    required this.nameProject,
    required this.infoProject,
    required this.technologies,
  });
  final String nameProject;
  final String infoProject;
  final List<String> technologies;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameProject,
          style: subtitlePrimaryStyle,
        ),
        Text(
          infoProject,
          style: paragraphTextStyle,
        ),
        TechnologiesContent(
          technologies: technologies,
        )
      ],
    );
  }
}
