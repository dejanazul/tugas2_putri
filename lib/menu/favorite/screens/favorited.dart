import 'package:flutter/material.dart';
import 'package:tugas2_putri/menu/site/sitemodel.dart';

class FavoritedPage extends StatefulWidget {
  const FavoritedPage({super.key});

  @override
  State<FavoritedPage> createState() => _FavoritedPageState();
}

class _FavoritedPageState extends State<FavoritedPage> {
  @override
  Widget build(BuildContext context) {
    List<SitusRekomendasi> favoritedItems =
        rekomendasiList.where((item) => item.favorited == true).toList();
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF8F4),
        centerTitle: true,
        title: const Text('Favorited'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7),
        itemCount: favoritedItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff583e12),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  SizedBox(
                      height: 125,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage(favoritedItems[index].assetImages),
                        fit: BoxFit.cover,
                      )),
                  Text(
                    favoritedItems[index].name,
                    style:
                        const TextStyle(color: Color(0xffFBF8F4), fontSize: 20),
                  ),
                  SizedBox(
                    height: 80,
                    child: Text(
                      favoritedItems[index].alamat,
                      style: const TextStyle(
                          color: Color(0xffFBF8F4), fontSize: 12),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              favoritedItems[index].favorited =
                                  !favoritedItems[index].favorited;
                            });
                          },
                          icon: favoritedItems[index].favorited
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_border_outlined,
                                ),
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
