import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/models/testimonial_model.dart';
import 'package:personal_portfolio/services/firebase_services.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class TestimonialsController extends GetxController {
  static TestimonialsController get to => Get.find<TestimonialsController>();
  //</
  final FirebaseService _firebaseService = FirebaseService();
  final RxList<TestimonialModel> testimonialsModel = <TestimonialModel>[].obs;
  final TextEditingController usernameController = TextEditingController();
  final rate = 1.0.obs;
  final TextEditingController messageController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final CarouselController carouselController = CarouselController();
  final loadingData = true.obs;
  final uploadingData = false.obs;
  final formKey = GlobalKey<FormState>();
  //>

  @override
  void onClose() {
    TestimonialsController.to.dispose();

    super.onClose();
  }

  clears() {
    usernameController.text = "";
    professionController.text = "";
    rate.value = 1.0;
    messageController.text = "";
  }

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  loadData() {
    loadingData.value = true;
    try {
      _firebaseService.getTestimonialsStream().listen((testimonialList) {
        testimonialsModel.value = testimonialList;
        loadingData.value = false;
      });
    } catch (e) {
      loadingData.value = false;
    }
  }

  validateForm() {
    //validacion del formulario
    if (formKey.currentState!.validate()) {
      //se inicializa la variable para la animacion de carga y saber el estado de la peticion
      uploadingData.value = true;
      formKey.currentState!.save();
      startLoading();
    }
  }

  startLoading() async {
    //tiempo de espera para mostrar un poco la animacion, ya que en firebase el tiempo de respuesta es super rapido
    await 2.delay(() {
      sendData();
    });

    //
  }

  Future<void> sendData() async {
    //metodo para el envio del testimonio
    try {
      await _firebaseService.addTestimonial(
        //se le pasa el modelo de la clase con los datos del formulario
        //me dio flonera implemantar la seleccion de imagen, pero si es de tu gusto puedes hacerlo
        //de momento le pasare un string vacio ya que tocaba hacer mas cosas
        TestimonialModel(
          profileimage: '',
          profession: professionController.text,
          message: messageController.text,
          publishedAt: DateTime.now(),
          rate: rate.value,
          username: usernameController.text,
        ),
      );
      uploadingData.value = false;
      //regresamos a la pantalla
      Get.back();
      //al pasar este tiempo mostraremos el mensaje
      //este timesleep es para esperar a estar en la pantalla y ver bien el mensaje
      await 100.milliseconds.delay();
      //podria haber reutilizado este metodo del snackbar para el mensaje pero la verdad paso de ello
      //si es de tu agrado puedes crear su clase reutilizable
      Get.snackbar(
        "Success",
        "Your testimony has been published",
        barBlur: 1.0,
        animationDuration: const Duration(milliseconds: 250),
        backgroundColor: primaryColor30,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
      );
    } catch (e) {
      Get.snackbar(
        "Failed",
        "$e",
        barBlur: 1.0,
        animationDuration: const Duration(milliseconds: 250),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
      );
      uploadingData.value = false;
    }
  }
}
