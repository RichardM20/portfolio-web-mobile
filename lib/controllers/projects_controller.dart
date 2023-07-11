import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/models/projetcs_model.dart';

import '../utils/projects_list.dart';

class ProjectsController extends GetxController {
  static ProjectsController get to => Get.find<ProjectsController>();

  late List<ProjectModel> projectsList;
  final carouselController = CarouselController();
  final loading = true.obs;
  //ni para que colocar esto jaja
  //pero seria lo normal en caso de que se hiciera una navegacion real
  @override
  void onClose() {
    ProjectsController.to.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    projectsList = convertToProjectModelList(projects);
    timeSleep();
    super.onInit();
  }

  timeSleep() async {
    //tiempo de espera para asi simular una carga de datos
    await 1.delay(() {
      loading.value = false;
    });
  }

  List<ProjectModel> convertToProjectModelList(
    List<Map<String, dynamic>> project,
  ) {
    //en este caso yo cargue los proyectos localmente
    //si es de tu agrado bien puedes cargarlos desde firebase o tu api
    //para ello deberas modificar obviamente el contenido de este metodo
    //como los del modelo en caso de que los datos que quieres mostrar no sean estos
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
        storesLinks: StoresLinks.fromJson(
          project['stores_links'],
        ),
      );
      //pasamos los proyectos a la lista
      projectList.add(projectModel);
    }
    //retornamos el la lista con los datos
    return projectList;
  }
}
