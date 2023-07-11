import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:personal_portfolio/controllers/navbar_controller.dart';
import 'package:personal_portfolio/views/screens/splash/splash_screen.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import './utils/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //controladores "globales", en realidad no se esta haciendo una navegacion de pantalla como tal
  //pero para no perder la costumbre lo declare aqui en el main
  Get.put(NavbarController());
  //inicializacion de los servicios de firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //para el formato de la fecha en texto
  initializeDateFormatting().then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Portfolio",
      debugShowCheckedModeBanner: false,
      //uso del plugin ResponsiveFramework
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1900, //maximo aceptado
        minWidth: 480, //minimo para el ajuste automatico
        defaultScale: true,
        defaultScaleFactor: 1.0,
        breakpoints: [
          //indicamos los puntos limite de cada dispositivo
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1900, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      home: const SplashScreen(),
    );
  }
}
