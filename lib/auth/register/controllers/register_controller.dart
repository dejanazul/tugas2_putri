import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_putri/auth/register/models/register_model.dart';
import 'package:tugas2_putri/repository/auth_repository.dart';
import 'package:tugas2_putri/repository/user_repository.dart';

class RegisterController extends GetxController {
  final AuthRepository authRepository = Get.find();
  final UserRepository userRepository = Get.find();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();


  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();
  final usernameFocus = FocusNode();


  void createUserWithEmailAndPassword(String email, String password) {
    authRepository.createUserWithEmailAndPassword(email, password);
  }

  Future<void> signupUserData(RegisterModel user) async {
    await userRepository.signupUserData(user);
  }
}
