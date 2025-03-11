import 'package:flutter/material.dart';

class ElearningScreen extends StatelessWidget {
  const ElearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna merah gelap
      body: Column(
        children: [
          // HEADER NAVIGASI
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD2B48C), // Warna beige
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.menu, size: 28, color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD2B48C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                      const Icon(Icons.search, size: 28, color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD2B48C),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.account_circle,
                      size: 28, color: Colors.black),
                ),
              ],
            ),
          ),

          // MENU UTAMA
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                menuItem(Icons.menu_book, "Absensi Online"),
                const SizedBox(height: 10),
                menuItem(Icons.assignment, "Pengumpulan Tugas Online"),
              ],
            ),
          ),

          // NAVIGASI BAWAH
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFFD2B48C),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.emoji_emotions, size: 32, color: Colors.black),
                Icon(Icons.brightness_6, size: 32, color: Colors.black),
                Icon(Icons.calendar_today, size: 32, color: Colors.black),
                Icon(Icons.chat_bubble_outline, size: 32, color: Colors.black),
                Icon(Icons.notifications, size: 32, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // WIDGET MENU ITEM
  Widget menuItem(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFD2B48C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 28, color: Colors.black),
          const SizedBox(width: 10),
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
