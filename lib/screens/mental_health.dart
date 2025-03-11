import 'package:flutter/material.dart';

class MentalHealthScreen extends StatelessWidget {
  const MentalHealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health'),
        backgroundColor: Colors.brown[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            const SizedBox(height: 20),
            EmotionalLevelCard(),
            const SizedBox(height: 20),
            OptionCard(
              icon: Icons.bookmark,
              title: 'Gratitude Journal',
              subtitle: 'Apa saja hal yang kamu syukuri hari ini?',
            ),
            const SizedBox(height: 10),
            OptionCard(
              icon: Icons.person,
              title: 'Konseling dengan para Ahli',
              subtitle: 'Curahkan masalahmu kepada para ahli',
            ),
            const Spacer(),
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.brown[200],
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        hintText: 'Cari informasi kesehatan mental...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class EmotionalLevelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Emotional Level',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Emotional Levelmu meningkat 20% dari minggu lalu!',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/emotional_chart.png', fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const OptionCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
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
            Icon(Icons.message, color: Colors.black),
            Icon(Icons.calendar_today, color: Colors.black),
            Icon(Icons.folder, color: Colors.black),
            Icon(Icons.notifications, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
