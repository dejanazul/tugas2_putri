import 'package:flutter/material.dart';
import 'package:tugas2_putri/menu/home/help.dart';
import 'package:tugas2_putri/menu/home/home.dart';

class HomeLandingPage extends StatefulWidget {
  const HomeLandingPage({super.key});

  @override
  State<HomeLandingPage> createState() => _HomeLandingPageState();
}

class _HomeLandingPageState extends State<HomeLandingPage> {
  final PageController pageController = PageController(initialPage: 0);
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F4),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        children: const [HomePage(), HelpPage()],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Container(
          color: Colors.black45,
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  });
                },
                child: Container(
                  color: const Color(0xff583e12),
                  child: const Center(
                      child: Text(
                    'Home',
                    style: TextStyle(color: Color(0xFFFBF8F4)),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  });
                },
                child: Container(
                  color: const Color(0xff583e12),
                  child: const Center(
                      child: Text(
                    'Help',
                    style: TextStyle(color: Color(0xFFFBF8F4)),
                  )),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
