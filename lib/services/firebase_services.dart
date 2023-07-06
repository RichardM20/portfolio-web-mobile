import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_portfolio/models/testimonial_model.dart';

class FirebaseService {
  Future<List<DocumentSnapshot<Map<String, dynamic>>>> getAllDocuments() async {
    final collectionRef = FirebaseFirestore.instance.collection('testimonials');
    final querySnapshot = await collectionRef.get();
    return querySnapshot.docs;
  }

  Future<void> addTestimonial(TestimonialModel model) async {
    final collectionRef = FirebaseFirestore.instance.collection('testimonials');
    final testimonialData = {
      'profile_image': model.profileimage,
      'username': model.username,
      'rate': model.rate,
      'message': model.message,
      'publishedAt': model.publishedAt,
    };
    await collectionRef.add(testimonialData);
  }
}
