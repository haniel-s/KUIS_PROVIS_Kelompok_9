import 'package:flutter/material.dart';

class KonselingDenganParaAhliScreen extends StatelessWidget {
  const KonselingDenganParaAhliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konseling dengan Para Ahli'),
        backgroundColor: Colors.brown[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Konseling dengan Para Ahli',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Curahkan masalahmu kepada para ahli',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 10),
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
            const Text(
              'Psychology Doctor',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(child: DoctorList()), // List dokter psikologi
            const SizedBox(height: 20),
            const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final doctors = [
      {'name': 'Dr. Bayu', 'time': 'Today, 9:52pm', 'message': 'Melek yuk'},
      {'name': 'Dr. Jovan Rius', 'time': 'Today, 12:10pm', 'message': 'Bagi'},
      {
        'name': 'Dr. Elvira',
        'time': 'Today, 2:40pm',
        'message': 'You have to report it...'
      },
      {
        'name': 'Dr. Bapak Herbert',
        'time': 'Yesterday, 12:10am',
        'message': 'Nevermind bro'
      },
      {
        'name': 'Dr. Dzaki',
        'time': 'Wednesday, 11:13am',
        'message': 'Okay, brother. Let\'s see...'
      },
    ];

    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        final doctor = doctors[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown[300],
            child: Text(doctor['name']![0]), // Inisial dokter
          ),
          title: Text(doctor['name']!,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(doctor['message']!),
          trailing: Text(doctor['time']!,
              style: const TextStyle(fontSize: 12, color: Colors.black54)),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Menghubungi ${doctor['name']}...")),
            );
          },
        );
      },
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
