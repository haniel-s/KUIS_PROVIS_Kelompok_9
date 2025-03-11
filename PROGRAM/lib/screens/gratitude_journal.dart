import 'package:flutter/material.dart';

class GratitudeJournalScreen extends StatelessWidget {
  const GratitudeJournalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gratitude Journal'),
        backgroundColor: Colors.brown[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gratitude Journal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Apa saja hal yang kamu syukuri hari ini?',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Tulis hal-hal yang kamu syukuri...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika menyimpan jurnal bisa ditambahkan di sini
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Jurnal disimpan!")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[700],
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  'Simpan Jurnal',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const BottomNavigation(),
          ],
        ),
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
