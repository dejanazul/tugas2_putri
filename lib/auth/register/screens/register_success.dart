// import 'package:flutter/material.dart';
// import 'package:get/instance_manager.dart';
// import 'package:get/route_manager.dart';
// import 'package:tugas2_putri/auth/register/controllers/register_controller.dart';
// import 'package:tugas2_putri/auth/register/models/register_model.dart';
// import 'package:tugas2_putri/menu/home/landing.dart';
// import 'package:tugas2_putri/repository/user_repository.dart';

// class RegisterSuccess extends StatefulWidget {
//   const RegisterSuccess({super.key});

//   @override
//   State<RegisterSuccess> createState() => _RegisterSuccessState();
// }

// class _RegisterSuccessState extends State<RegisterSuccess> {
//   final RegisterController registerController = Get.find();
//   final UserRepository userRepository = Get.find();

//   // ignore: non_constant_identifier_names
//   Future<void> Register() async {
//     final user = RegisterModel(
//         username: registerController.usernameController.text.trim(),
//         email: registerController.emailController.text.trim(),
//         password: registerController.passwordController.text.trim());
//     await userRepository.signupUserData(user);
//     Get.to(() => const HomeLandingPage());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
