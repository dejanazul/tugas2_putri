import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:tugas2_putri/auth/login/controllers/login_controller.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF8F4),
      ),
      backgroundColor: const Color(0xFFFBF8F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cara Menggunakan Aplikasi:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color(0xff583e12)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                '1. Daftar Anggota',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Menampilkan daftar anggota dengan cara memilih menu daftar anggota pada halaman homepage.',
              textAlign: TextAlign.justify,
            ),
            const Text(
              '2. Stopwatch',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Menjalankan fitur stopwatch dengan cara menekan tombol start terlebih dahulu untuk menjalankan timer. Lalu tombol disebelah kanan berfungsi untuk menghitung Lap, sedangkan yang disebelah kiri berfungsi untuk mmengulang perhitungan stopwatch',
              textAlign: TextAlign.justify,
            ),
            const Text(
              '3. Situs Rekomendasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Menampilkan situs wisata rekomendasi  yang berisi gambar, judul, alamat, serta icon favorite dan button dibawah card untuk mengarahkan ke google maps dari wisata tersebut.',
              textAlign: TextAlign.justify,
            ),
            const Text(
              '4. Favorite',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Menampilkan situs wisata yang telah difavoritkan dengan cara menekan icon favorite di halaman situs rekomendasi',
              textAlign: TextAlign.justify,
            ),

            // Logout Button
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    loginController.signOut();
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 181, 47, 37)),
                      foregroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 255, 255, 255))),
                  child: const Text('Logout'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
