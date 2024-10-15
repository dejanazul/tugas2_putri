import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tugas2_putri/auth/register/controllers/register_controller.dart';
import 'package:tugas2_putri/auth/register/models/register_model.dart';
import 'package:tugas2_putri/auth/register/screens/register_success.dart';
import 'package:tugas2_putri/menu/home/landing.dart';

class AuthRepository extends GetxController {
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  String? get userId => firebaseUser.value?.uid;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.to(() => const HomeLandingPage());
    } on FirebaseAuthException catch (e) {
      throw 'FIREBASE AUTH ERROR $e';
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.to(() => const HomeLandingPage());
    } on FirebaseAuthException catch (e) {
      throw 'FIREBASE AUTH ERROR: $e';
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
