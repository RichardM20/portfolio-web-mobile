import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_portfolio/models/testimonial_model.dart';

class FirebaseService {
  final _firestoreInstance = FirebaseFirestore.instance;
  Stream<QuerySnapshot> getCollectionStream(String collectionName) {
    return _firestoreInstance.collection('testimonials').snapshots();
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
