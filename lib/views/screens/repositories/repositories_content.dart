import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/projects_controller.dart';
import 'package:personal_portfolio/views/widgets/block_wrapper.dart';

import 'widgets/repositories_body.dart';

class RepositoriesContent extends StatelessWidget {
  RepositoriesContent({super.key});
  final _instance = Get.put(ProjectsController());

  @override
  Widget build(BuildContext context) {
    return BlockWrapper(RepositoriesBody());
  }
}
