import 'package:flutter/material.dart';
import 'package:tugas2_putri/menu/favorite/favorited.dart';
import 'package:tugas2_putri/menu/kelompok/daftaranggota.dart';
import 'package:tugas2_putri/menu/site/rekomendasi.dart';
import 'package:tugas2_putri/menu/stopwatch/stopwatch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Color(0xff583e12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Title
                    const Text(
                      'Main Menu',
                      style:
                          TextStyle(fontSize: 32, color: Color((0xffFBF8F4))),
                    ),

                    // Daftar Anggota
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DaftarAnggota()));
                            },
                            child: const Text('Daftar Anggota'))),

                    // Stopwatch
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StopwatchScreen()));
                            },
                            child: const Text('Stopwatch'))),

                    // Situs Rekomendasi
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SitusPage()));
                            },
                            child: const Text('Situs Rekomendasi'))),

                    // Favorite
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FavoritedPage()));
                            },
                            child: const Text('Favorite'))),
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
