import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_putri/auth/login/screens/login.dart';
import 'package:tugas2_putri/menu/home/landing.dart';
import 'package:tugas2_putri/repository/exception/auth_exception.dart';

class AuthRepository extends GetxController {
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.to(() => const LoginPage())
        : Get.offAll(() => const HomeLandingPage());
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(() => const HomeLandingPage());
    } on FirebaseAuthException catch (e) {
      final ex = AuthException.code(e.code);
      if (Get.isSnackbarOpen == false) {
        Get.showSnackbar(GetSnackBar(
          message: ex.message,
          backgroundColor: Colors.red,
        ));
      }
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(() => const HomeLandingPage());
    } on FirebaseAuthException catch (e) {
      final ex = AuthException.code(e.code);
      if (Get.isSnackbarOpen == false) {
        Get.showSnackbar(GetSnackBar(
          message: ex.message,
          backgroundColor: Colors.red,
        ));
      }
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
