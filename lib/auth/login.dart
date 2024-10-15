import 'package:flutter/material.dart';
import 'package:tugas2_putri/auth/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obstext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Title
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 32, color: Color((0xffFBF8F4))),
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
                      obscureText: obstext,
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
                                : const Icon(Icons.visibility, size: 20),
                            color: const Color(0xffFBF8F4),
                          ),
                          labelText: 'Password',
                          labelStyle:
                              const TextStyle(color: Color((0xffFBF8F4))),
                          border: const OutlineInputBorder()),
                    ),
                  ),

                  // Login Button
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
                                  builder: (context) => const SignUpPage()));
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
    );
  }
}
