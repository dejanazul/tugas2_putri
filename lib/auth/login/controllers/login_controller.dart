import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_putri/repository/auth_repository.dart';

class LoginController extends GetxController {
  final AuthRepository authRepository = Get.find();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  RxBool isLoading = false.obs;

  void signInWithEmailAndPassword(String email, String password) {
    authRepository.signInWithEmailAndPassword(email, password);
  }

  Future<void> signOut() async {
    await authRepository.signOut();
  }
}
