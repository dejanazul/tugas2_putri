import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:tugas2_putri/auth/login/screens/login.dart';
import 'package:tugas2_putri/auth/register/controllers/register_controller.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final RegisterController registerController = Get.find();
  bool obstext = true;

  @override
  Widget build(BuildContext context) {
    final registerKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFFBF8F4),
        body: Center(
          child: SizedBox(
            height: 400,
            width: 350,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(34)),
                  color: Color(0xff583e12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Form(
                  key: registerKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Title
                      const Text(
                        'Register',
                        style:
                            TextStyle(fontSize: 32, color: Color(0xffFBF8F4)),
                      ),

                      // Email
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email can't be empty";
                          }
                          return null;
                        },
                        controller: registerController.emailController,
                        focusNode: registerController.emailFocus,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            labelStyle: TextStyle(color: Color((0xffFBF8F4))),
                            labelText: 'Email',
                            border: OutlineInputBorder()),
                      ),

                      // Password
                      SizedBox(
                        height: 55,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password can't be empty";
                            }
                            return null;
                          },
                          controller: registerController.passwordController,
                          focusNode: registerController.passwordFocus,
                          style: const TextStyle(color: Colors.white),
                          obscureText: obstext,
                          decoration: InputDecoration(
                              labelStyle:
                                  const TextStyle(color: Color((0xffFBF8F4))),
                              labelText: 'Password',
                              suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obstext = !obstext;
                                  });
                                },
                                icon: obstext
                                    ? const Icon(
                                        Icons.visibility_off,
                                        size: 20,
                                      )
                                    : const Icon(Icons.visibility, size: 20),
                                color: const Color(0xffFBF8F4),
                              ),
                              border: const OutlineInputBorder()),
                        ),
                      ),

                      // Register Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xff774C18)),
                                foregroundColor:
                                    WidgetStatePropertyAll(Color(0xffFBF8F4)),
                              ),
                              onPressed: () {
                                if (registerKey.currentState!.validate()) {
                                  registerController
                                      .createUserWithEmailAndPassword(
                                          registerController
                                              .emailController.text
                                              .trim(),
                                          registerController
                                              .passwordController.text
                                              .trim());
                                }
                              },
                              child: const Text(
                                'Register',
                              ))),

                      // Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 4.0),
                            child: Text(
                              'Sudah punya akun?',
                              style: TextStyle(color: Color(0xffFBF8F4)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xffFBF8F4)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
