import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFD2B48C), // Warna krem sesuai desain
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey[600],
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Medsos'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Elearning'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), label: 'Jadwal'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Pesan'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notifikasi'),
      ],
    );
  }
}
