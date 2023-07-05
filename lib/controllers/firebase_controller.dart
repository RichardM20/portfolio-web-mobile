import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/models/testimonial_model.dart';
import 'package:personal_portfolio/services/firebase_services.dart';

class TestimonialsController extends GetxController {
  static TestimonialsController get to => Get.find<TestimonialsController>();
  final FirebaseService _firebaseService = FirebaseService();
  final RxList<TestimonialModel> documents = <TestimonialModel>[].obs;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    final docs = await _firebaseService.getAllDocuments();
    documents.assignAll(
      docs.map((doc) => TestimonialModel.fromJson(doc.data()!)).toList(),
    );
  }

  Future<void> sendData() async {
    await _firebaseService.addTestimonial(
      TestimonialModel(
        message: messageController.text,
        publishedAt: DateTime.now().toLocal(),
        rate: int.parse(rateController.text),
        username: usernameController.text,
      ),
    );
  }
}
