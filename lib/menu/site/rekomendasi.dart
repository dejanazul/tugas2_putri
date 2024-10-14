import 'package:flutter/material.dart';

class SitusPage extends StatelessWidget {
  const SitusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF8F4),
        centerTitle: true,
        title: const Text('Situs Rekomendasi'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff583e12),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  const SizedBox(
                      height: 125,
                      child: Image(image: AssetImage('assets/logo.png'))),
                  const Text(
                    'Judul',
                    style: TextStyle(color: Color(0xffFBF8F4), fontSize: 20),
                  ),
                  const SizedBox(
                    height: 80,
                    child: Text(
                      'Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat Alamat',
                      style: TextStyle(color: Color(0xffFBF8F4), fontSize: 12),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 135,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              backgroundColor: const WidgetStatePropertyAll(
                                  Color(0xff774C18)),
                              foregroundColor: const WidgetStatePropertyAll(
                                  Color(0xffFBF8F4)),
                            ),
                            child: const Text('Google Maps')),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
