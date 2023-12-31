import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_portfolio/models/testimonial_model.dart';

//en esta clase se alojara todo lo que vayamos a consumir de firebase
class FirebaseService {
  final _firestoreInstance = FirebaseFirestore.instance;

  Stream<List<TestimonialModel>> getTestimonialsStream() {
    //cambiar el nombre de la coleccion en caso de que no se tenga el mismo
    //asi mismo el modelo de clase agregar o eliminar lo necesario
    return _firestoreInstance
        .collection('testimonials')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        //escuchamos los datos y mapeamos al modelo de clase
        return TestimonialModel(
          message: doc['message'],
          profession: doc['profession'],
          profileimage: doc['profile_image'],
          publishedAt: (doc['publishedAt'] as Timestamp).toDate(),
          rate: doc['rate'].toDouble(),
          username: doc['username'],
        );
      }).toList();
    });
  }

  //este es el metodo para agregar los datos a la coleccion
  Future<void> addTestimonial(TestimonialModel model) async {
    //recuerda que debes colocar aqui el mismo nombre de tu coleccion en caso de que sea diferente

    final collectionRef = FirebaseFirestore.instance.collection('testimonials');
    final testimonialData = {
      'profile_image': model.profileimage,
      'username': model.username,
      'profession': model.profession,
      'rate': model.rate,
      'message': model.message,
      'publishedAt': model.publishedAt,
    };
    //mandamos el modelo
    await collectionRef.add(testimonialData);
  }
}
