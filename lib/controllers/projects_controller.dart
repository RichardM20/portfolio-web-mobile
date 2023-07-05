import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/models/projetcs_model.dart';

import '../utils/projects_list.dart';

class ProjectsController extends GetxController {
  static ProjectsController get to => Get.find<ProjectsController>();

  late List<ProjectModel> projectsList;
  final carouselController = CarouselController();
  @override
  void onClose() {
    ProjectsController.to.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    projectsList = convertToProjectModelList(projects);
    super.onInit();
  }

  List<ProjectModel> convertToProjectModelList(
    List<Map<String, dynamic>> project,
  ) {
    List<ProjectModel> projectList = [];
    //insertamos los datos en la lista del modelo
    for (var project in project) {
      ProjectModel projectModel = ProjectModel(
        name: project['name'],
        description: project['description'],
        technologies: List<String>.from(project['technologies']),
        images: project['images'],
        repositoryLink: project['repository_link'],
        published: project['published'],
        storesLinks: project['storesLink'],
      );

      projectList.add(projectModel);
    }

    return projectList;
  }
}
