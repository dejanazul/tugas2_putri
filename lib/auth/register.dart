import 'package:flutter/material.dart';
import 'package:tugas2_putri/auth/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool obstext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F4),
      body: Center(
        child: SizedBox(
          height: 450,
          width: 350,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(34)),
                color: Color(0xff583e12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Title
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 32, color: Color(0xffFBF8F4)),
                  ),

                  // Username
                  const TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color((0xffFBF8F4))),
                        labelText: 'Username',
                        border: OutlineInputBorder()),
                  ),

                  // Email
                  const TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Color((0xffFBF8F4))),
                        labelText: 'Email',
                        border: OutlineInputBorder()),
                  ),

                  // Password
                  SizedBox(
                    height: 55,
                    child: TextField(
                      obscureText: true,
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
                          onPressed: () {},
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
                          'Login',
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
    );
  }
}
