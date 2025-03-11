import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4E1E1E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const TextField(
          decoration: InputDecoration(
            hintText: "Cari pengumuman, materi kuliah",
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomCard(
              title: "Beasiswa Sampurna",
              description: "Beasiswa untuk siswa berprestasi...",
              icon: Icons.image,
            ),
            const SizedBox(height: 10),
            CustomCard(
              title: "Kuliah hari ini...",
              description: "Pemrograman Visual, 9.30 (ZOOM)",
              icon: Icons.schedule,
            ),
            const SizedBox(height: 10),
            CustomCard(
              title: "Tugas",
              description: "Tubes 1 Proyek (Besok, 19:00)",
              icon: Icons.assignment,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.favorite, color: Colors.white),
                Icon(Icons.book, color: Colors.white),
                Icon(Icons.account_balance_wallet, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
