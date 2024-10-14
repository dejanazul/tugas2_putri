import 'package:flutter/material.dart';

class DaftarAnggota extends StatelessWidget {
  const DaftarAnggota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF8F4),
        centerTitle: true,
        title: const Text('Daftar Anggota'),
      ),
      body: Center(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Kamil
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      color: Color(0XFF774C18),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(72),
                        bottomLeft: Radius.circular(72),
                        topRight: Radius.circular(22),
                        bottomRight: Radius.circular(22),
                      )),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/kamil.jpeg'),
                        radius: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hanidar raffilia kamil',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFFFBF8F4),
                              ),
                            ),
                            Text('124220019',
                                style: TextStyle(
                                  color: Color(0xFFFBF8F4),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // Daffa
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      color: Color(0XFF774C18),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(72),
                        bottomRight: Radius.circular(72),
                        topLeft: Radius.circular(22),
                        bottomLeft: Radius.circular(22),
                      )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'daffa fawwaz Maulana',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFFFBF8F4),
                              ),
                            ),
                            Text('124220121',
                                style: TextStyle(
                                  color: Color(0xFFFBF8F4),
                                )),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/daffa.jpeg'),
                        radius: 60,
                      ),
                    ],
                  ),
                ),
              ),

              // Putri
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      color: Color(0XFF774C18),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(72),
                        bottomLeft: Radius.circular(72),
                        topRight: Radius.circular(22),
                        bottomRight: Radius.circular(22),
                      )),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/putri.jpeg'),
                        radius: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "putri Auliya'",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xFFFBF8F4),
                              ),
                            ),
                            Text('124220137',
                                style: TextStyle(
                                  color: Color(0xFFFBF8F4),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
