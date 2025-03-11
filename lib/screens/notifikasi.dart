import 'package:flutter/material.dart';

class NotifikasiScreen extends StatefulWidget {
  const NotifikasiScreen({Key? key}) : super(key: key);

  @override
  _NotifikasiScreenState createState() => _NotifikasiScreenState();
}

class _NotifikasiScreenState extends State<NotifikasiScreen> {
  // Dummy data untuk daftar notifikasi
  final List<Map<String, String>> notifications = [
    {"agenda": "Quiz Flutter", "time": "1 Jam yang lalu"},
    {"agenda": "UTS DPB0", "time": "2 Jam yang lalu"},
    {"agenda": "Tugas Metodologi Penelitian", "time": "4 Jam yang lalu"},
    {"agenda": "Laporan Proyek Konsultasi", "time": "4 Jam yang lalu"},
    {"agenda": "Quiz Algoritma", "time": "16 Jam yang lalu"},
    {"agenda": "Tugas Desain Web", "time": "12 Jam yang lalu"},
    {"agenda": "Tugas Sistem Basis Data", "time": "24 Jam yang lalu"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF4A1C1C), // Warna latar belakang merah gelap
      body: Column(
        children: [
          // HEADER NAVIGASI (SEARCH BAR & PROFIL)
          _buildHeader(),

          // LIST NOTIFIKASI
          Expanded(child: _buildNotificationList()),
        ],
      ),

      // NAVIGASI BAWAH
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  // WIDGET HEADER (SEARCH BAR + PROFIL)
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: const Color(0xFF4A1C1C), // Warna merah gelap
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.black54),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Icon(Icons.account_circle, size: 40, color: Colors.black),
          ),
        ],
      ),
    );
  }

  // WIDGET LIST NOTIFIKASI
  Widget _buildNotificationList() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("List Notifikasi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Divider(),
          _buildTableHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return _buildNotificationItem(notifications[index]["agenda"]!,
                    notifications[index]["time"]!);
              },
            ),
          ),
        ],
      ),
    );
  }

  // WIDGET HEADER TABEL NOTIFIKASI
  Widget _buildTableHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Agenda", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("H-Deadline", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // WIDGET ITEM NOTIFIKASI
  Widget _buildNotificationItem(String agenda, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(agenda, style: const TextStyle(fontSize: 16)),
          Text(time,
              style: const TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ),
    );
  }

  // WIDGET NAVIGASI BAWAH
  Widget _bottomNavigation() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD2B48C),
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
    );
  }
}
