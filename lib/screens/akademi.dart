import 'package:flutter/material.dart';

class AkademiScreen extends StatelessWidget {
  const AkademiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akademik'),
        backgroundColor: Colors.brown[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Jadwal Mata Kuliah
            const Text(
              'Jadwal Mata Kuliah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(child: JadwalList()),

            const SizedBox(height: 20),

            // Materi & Nilai Perkuliahan
            MenuItem(
              icon: Icons.book,
              title: "Materi Perkuliahan",
              subtitle: "",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Menu Materi Perkuliahan")),
                );
              },
            ),
            MenuItem(
              icon: Icons.assignment,
              title: "Nilai Perkuliahan",
              subtitle: "IPK, IP dan nilai per mata kuliah",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Menu Nilai Perkuliahan")),
                );
              },
            ),

            const SizedBox(height: 20),

            // Bottom Navigation
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}

class JadwalList extends StatelessWidget {
  const JadwalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final jadwal = [
      {
        'pelajaran': 'Algoritma Pemrograman',
        'jadwal': 'Senin - 09:30',
        'kota': 'B-301'
      },
      {
        'pelajaran': 'Proyek Konsultasi',
        'jadwal': 'Senin - 12:30',
        'kota': 'B-201'
      },
      {'pelajaran': 'Sastra Mesin', 'jadwal': 'Senin - 15:30', 'kota': 'C-101'},
      {
        'pelajaran': 'Sastra Hooligan',
        'jadwal': 'Selasa - 09:30',
        'kota': 'C-201'
      },
      {
        'pelajaran': 'Teknik Keluarga',
        'jadwal': 'Selasa - 19:30',
        'kota': 'A-202'
      },
      {
        'pelajaran': 'Ilmu Tata Parani',
        'jadwal': 'Rabu - 07:30',
        'kota': 'C-301'
      },
      {
        'pelajaran': 'Pendidikan Lingkungan Hidup',
        'jadwal': 'Rabu - 12:30',
        'kota': 'D-201'
      },
      {
        'pelajaran': 'Administrasi Geofisika',
        'jadwal': 'Rabu - 18:30',
        'kota': 'D-101'
      },
    ];

    return ListView.builder(
      itemCount: jadwal.length,
      itemBuilder: (context, index) {
        final item = jadwal[index];
        return Card(
          child: ListTile(
            title: Text(item['pelajaran']!,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(item['jadwal']!),
            trailing: Text(
              item['kota']!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ),
        );
      },
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown[200],
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.black),
        title: Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.brown[300],
      shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.emoji_emotions, color: Colors.black),
            Icon(Icons.wb_sunny, color: Colors.black),
            Icon(Icons.calendar_today, color: Colors.black),
            Icon(Icons.chat_bubble, color: Colors.black),
            Icon(Icons.notifications, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
