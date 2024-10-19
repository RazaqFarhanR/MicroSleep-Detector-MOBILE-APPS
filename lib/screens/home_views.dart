import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100], // Warna background abu muda
              borderRadius: BorderRadius.circular(100), // Sudut membulat
            ),
            padding: const EdgeInsets.only(right: 20.0, left: 8.0, top: 8.0, bottom: 8.0), // Padding untuk memberi jarak
            child: const Row(
              mainAxisSize: MainAxisSize.min, // Agar Row tidak mengisi seluruh ruang
              mainAxisAlignment: MainAxisAlignment.start, // Mengatur agar elemen di kiri
              children: [
                CircleAvatar(
                  radius: 20,
                  // backgroundImage: NetworkImage('https://example.com/avatar.png'), // Ganti dengan URL avatar
                ),
                SizedBox(width: 8),
                Text(
                  'Farhan',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Aksi ketika ikon pengaturan ditekan
              },
            ),
          ],
        ),
      body: Column(
        children: [
          // Baris Pertama
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Hello, Farhan', // Ganti dengan nama pengguna
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Baris Kedua - Card untuk Vehicle
          SizedBox(
          width: double.infinity, // Mengatur lebar penuh
          child: Card(
            elevation: 4,
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Agar konten kartu rata kiri
                children: [
                  Text(
                    'Informasi Kendaraan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jenis: Sedan\nMerek: Toyota\nModel: Camry\nTahun: 2021',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),
        ),
          // Baris Ketiga - Card untuk Device
          SizedBox(
            width: double.infinity, // Mengatur lebar penuh
            child: Card(
              elevation: 4,
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Agar konten kartu rata kiri
                  children: [
                    Text(
                      'Informasi Perangkat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Jenis: Smartphone\nMerek: Samsung\nModel: Galaxy S21',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
