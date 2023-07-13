import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/views/screens/testimonials/testimonials_content.dart';

import 'repositories/repositories_content.dart';
import '../widgets/navbar/navbar_content.dart';
import 'welcome/welcome_content.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final _controller = NavbarController.to;

  @override
  void initState() {
    super.initState();
    _controller.scrollController = ScrollController();
    _controller.scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _controller.scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    //aqui se controla la psicion para hacer la animacion correspondiente
    double position = _controller.scrollController.position.pixels;
    _controller.welcomeOpacity.value = position < 200.0 ? 1.0 : 0.0;
    _controller.repositoriesOpacity.value = position < 520.0 ? 1.0 : 0.0;
    _controller.testimonialsOpacity.value = position < 800.0 ? 1.0 : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
              child: Obx(
                () => ListView(
                  controller: _controller.scrollController,
                  children: [
                    AnimatedOpacity(
                      opacity: _controller.welcomeOpacity.value,
                      duration: const Duration(milliseconds: 200),
                      child: const WelcomeContent(),
                    ),
                    AnimatedOpacity(
                      opacity: _controller.repositoriesOpacity.value,
                      duration: const Duration(milliseconds: 200),
                      child: RepositoriesContent(),
                    ),
                    AnimatedOpacity(
                      opacity: _controller.testimonialsOpacity.value,
                      duration: const Duration(milliseconds: 200),
                      child: const TestimonialsContent(),
                    ),
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

// import 'package:flutter/material.dart';

// import 'package:personal_portfolio/controllers/navbar_controller.dart';
// import 'package:personal_portfolio/views/screens/testimonials/testimonials_content.dart';

// import 'repositories/repositories_content.dart';
// import '../widgets/navbar/navbar_content.dart';
// import 'welcome/welcome_content.dart';

// class Index extends StatefulWidget {
//   const Index({super.key});

//   @override
//   State<Index> createState() => _IndexState();
// }

// class _IndexState extends State<Index> {
//   final _controller = NavbarController.to;
//   //pagina contenedora de todas las vistas
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //color general de fondo
//       backgroundColor: Colors.grey.shade100,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         padding: EdgeInsets.symmetric(
//           horizontal: MediaQuery.of(context).size.width > 600 ? 50 : 10,
//         ),
//         child: Column(
//           children: [
//             NavBarContent(),
//             Expanded(
//               child: PageView(
//                 controller: _controller.pageController,
//                 scrollDirection: Axis.vertical,
//                 children: [
//                   const WelcomeContent(),
//                   RepositoriesContent(),
//                   const TestimonialsContent(),
//                   //pensaba agregar otra seccion mas pero ya me basta con las antyeriores
//                   //si es de tu agrado agregala
//                   //asi mismo puedes cambiar la manera de nevegacion
//                   //solo ten en cuenta que los botones de acciones del navbar no funcionaran
//                   // y no te llevaran a la seccion que oprimas
//                   // a menos que modifiques el codigo a tu manera para que lo logre y haga
//                   // const AboutmeContent()
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
