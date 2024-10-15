import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/route_manager.dart';
import 'package:tugas2_putri/auth/register/models/register_model.dart';
import 'package:tugas2_putri/menu/home/landing.dart';

class UserRepository extends GetxController {
  late final Rx<User?> firebaseUser;
  final _db = FirebaseFirestore.instance;

  String? get userId => firebaseUser.value?.uid;

  //create user in database
  signupUserData(RegisterModel user) async {
    await _db
        .collection('users')
        .doc(userId)
        .set(user.toJson())
        .then((docRef) async {
      // setelah user signup, buat empty favourite collection
      await _db.collection('users').doc(userId).collection('favourites').add({
        'initialized': false,
      });
    }).whenComplete(() => Get.to(() => const HomeLandingPage()));
    // ignore: avoid_print
    //     print('USER REPOSITORY - berasil memasukkan data ke database'))
    // // ignore: body_might_complete_normally_catch_error
    // .catchError((error, stackTrace) {
    //   // ignore: avoid_print
    //   print(error.toString());
    // });
  }
}
