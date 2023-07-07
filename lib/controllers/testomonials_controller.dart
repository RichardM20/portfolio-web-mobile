import 'package:carousel_slider/carousel_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/models/testimonial_model.dart';
import 'package:personal_portfolio/services/firebase_services.dart';

class TestimonialsController extends GetxController {
  static TestimonialsController get to => Get.find<TestimonialsController>();
  //</
  final FirebaseService _firebaseService = FirebaseService();
  final RxList<TestimonialModel> testimonialsModel = <TestimonialModel>[].obs;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final CarouselController carouselController = CarouselController();
  //>
  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    print("load data method has been called");
    try {
      _firebaseService.getCollectionStream('collectionName').listen((snapshot) {
        testimonialsModel.clear();
        for (var doc in snapshot.docs) {
          TestimonialModel model = TestimonialModel(
            message: doc.get('message'),
            profession: doc.get('profession'),
            profileimage: doc.get('profile_image'),
            publishedAt: doc.get('publishedAt'),
            rate: doc.get('rate'),
            username: doc.get('username'),
          );

          testimonialsModel.add(model);
        }
      });
    } catch (e) {
      print("Exception: $e");
    }
  }

  Future<void> sendData() async {
    await _firebaseService.addTestimonial(
      TestimonialModel(
        profileimage: '',
        profession: professionController.text,
        message: messageController.text,
        publishedAt: Timestamp.fromDate(DateTime.now().toLocal()),
        rate: int.parse(rateController.text),
        username: usernameController.text,
      ),
    );
  }
}
