import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas2_putri/auth/login/controllers/login_controller.dart';
import 'package:tugas2_putri/auth/register/screens/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController loginController = Get.find();
  final loginFormKey = GlobalKey<FormState>();

  bool obstext = true;
  @override
  Widget build(BuildContext context) {
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
                child: Stack(
                  children: [
                    Form(
                      key: loginFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Title
                          const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 32, color: Color((0xffFBF8F4))),
                          ),

                          // Email
                          TextFormField(
                            controller: loginController.emailController,
                            focusNode: loginController.emailFocus,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email can't be empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                labelStyle:
                                    TextStyle(color: Color((0xffFBF8F4))),
                                labelText: 'Email',
                                border: OutlineInputBorder()),
                            style: const TextStyle(color: Colors.white),
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
                              controller: loginController.passwordController,
                              focusNode: loginController.passwordFocus,
                              obscureText: obstext,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
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
                                        : const Icon(Icons.visibility,
                                            size: 20),
                                    color: const Color(0xffFBF8F4),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(
                                      color: Color((0xffFBF8F4))),
                                  border: const OutlineInputBorder()),
                            ),
                          ),

                          // Login Button
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                        Color(0xff774C18)),
                                    foregroundColor: WidgetStatePropertyAll(
                                        Color(0xffFBF8F4)),
                                  ),
                                  onPressed: () {
                                    try {
                                      loginController.isLoading.value = true;
                                      if (loginFormKey.currentState!
                                          .validate()) {
                                        loginController
                                            .signInWithEmailAndPassword(
                                                loginController
                                                    .emailController.text
                                                    .trim(),
                                                loginController
                                                    .passwordController.text
                                                    .trim());
                                      }
                                    } finally {
                                      loginController.isLoading.value = false;
                                    }
                                  },
                                  child: const Text(
                                    'Login',
                                  ))),

                          // Register
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Text(
                                  'Belum punya akun?',
                                  style: TextStyle(color: Color(0xffFBF8F4)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpPage()));
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xffFBF8F4)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Obx(() {
                      if (loginController.isLoading.value == true) {
                        return Container(
                          color: Colors.black.withOpacity(0.5),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
