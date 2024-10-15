class SitusRekomendasi {
  String id;
  String assetImages;
  String name;
  String alamat;
  String url;
  bool favorited;

  SitusRekomendasi(
      {required this.id,
      required this.assetImages,
      required this.name,
      required this.alamat,
      required this.favorited,
      required this.url});
}

var rekomendasiList = [
  SitusRekomendasi(
      id: '1',
      assetImages: 'assets/situsrekomendasi/prambanan.jpeg',
      name: 'Candi Prambanan',
      alamat:
          'Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571',
      url: 'https://maps.app.goo.gl/BRbsyWUVcnhoUcF97',
      favorited: false),
  SitusRekomendasi(
      id: '2',
      assetImages: 'assets/situsrekomendasi/tamansari.jpeg',
      name: 'Taman Sari',
      alamat:
          'Patehan, Kraton, Yogyakarta City, Special Region of Yogyakarta 55133',
      url: 'https://maps.app.goo.gl/KUX4LSGcL5hHF7cY6',
      favorited: false),
  SitusRekomendasi(
      id: '3',
      assetImages: 'assets/situsrekomendasi/ratuboko.jpeg',
      name: 'Ratu Boko',
      alamat:
          'Jl. Raya Piyungan - Prambanan No.2, Gatak, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 5572',
      url: 'https://maps.app.goo.gl/iD5HwjEH2k9Z7pGw8',
      favorited: false),
  SitusRekomendasi(
      id: '4',
      assetImages: 'assets/situsrekomendasi/malioboro.jpeg',
      name: 'Malioboro',
      alamat:
          'Jl. Malioboro, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271',
      url: 'https://maps.app.goo.gl/nTXqcNYm484Tz6wy7',
      favorited: false),
  SitusRekomendasi(
      id: '5',
      assetImages: 'assets/situsrekomendasi/alkid.jpeg',
      name: 'Alun Alun Kidul',
      alamat:
          'Patehan, Kraton, Yogyakarta City, Special Region of Yogyakarta 55133',
      url: 'https://maps.app.goo.gl/G5kxXukY1z5QMRA36',
      favorited: false),
];
