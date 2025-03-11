import 'package:flutter/material.dart';

class JadwalTodoScreen extends StatefulWidget {
  const JadwalTodoScreen({Key? key}) : super(key: key);

  @override
  _JadwalTodoScreenState createState() => _JadwalTodoScreenState();
}

class _JadwalTodoScreenState extends State<JadwalTodoScreen> {
  // Dummy data untuk jadwal
  final List<Map<String, String>> jadwalList = [
    {"agenda": "Quiz Flutter", "deadline": "6 Maret 2025", "sisa": "1 Hari"},
    {"agenda": "UTS DPBO", "deadline": "25 Maret 2025", "sisa": "20 Hari"},
    {
      "agenda": "Tugas Metodologi Penelitian",
      "deadline": "28 Maret 2025",
      "sisa": "23 Hari"
    },
    {
      "agenda": "Laporan Proyek Konsultansi",
      "deadline": "12 April 2025",
      "sisa": "42 Hari"
    },
    {
      "agenda": "Quiz Algoritma",
      "deadline": "13 April 2025",
      "sisa": "43 Hari"
    },
    {
      "agenda": "Tugas Desain Web",
      "deadline": "15 April 2025",
      "sisa": "45 Hari"
    },
    {
      "agenda": "Tugas Sistem Basis Data",
      "deadline": "17 April 2025",
      "sisa": "47 Hari"
    },
  ];

  // Dummy data untuk To Do List
  final List<Map<String, dynamic>> todoList = [
    {"task": "Review Materi DPBO", "done": false},
    {"task": "Tak Pernah Chef Jana", "done": true},
    {"task": "Wing Chun Exercise", "done": false},
    {"task": "Underground Fight", "done": false},
    {"task": "Karate Tournament", "done": false},
    {"task": "Chess Tournament - VS Magnus Carlsen", "done": true},
    {"task": "Reunion Aksi Saga: Juno", "done": false},
    {"task": "Belajar Flutter", "done": false},
    {"task": "Masak Bareng Godville", "done": false},
    {"task": "Menonton Video Timothy Ronald", "done": true},
  ];

  // Controller untuk input tugas baru
  final TextEditingController _todoController = TextEditingController();

  void _addTodo() {
    if (_todoController.text.isNotEmpty) {
      setState(() {
        todoList.add({"task": _todoController.text, "done": false});
        _todoController.clear();
      });
    }
  }

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
                _iconBox(Icons.menu),
                _iconBox(Icons.search),
                _iconBox(Icons.account_circle),
              ],
            ),
          ),

          // KONTEN UTAMA
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // JADWAL
                  _sectionTitle("Jadwal"),
                  _buildJadwalTable(),

                  const SizedBox(height: 20),

                  // TO DO LIST
                  _sectionTitle("To Do"),
                  _buildTodoList(),

                  // FORM INPUT TO DO
                  _buildTodoInput(),
                ],
              ),
            ),
          ),

          // NAVIGASI BAWAH
          _bottomNavigation(),
        ],
      ),
    );
  }

  // WIDGET NAVIGASI
  Widget _iconBox(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFD2B48C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(icon, size: 28, color: Colors.black),
    );
  }

  // WIDGET JUDUL SECTION
  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
    );
  }

  // WIDGET TABEL JADWAL
  Widget _buildJadwalTable() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Agenda", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Deadline", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Sisa", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(),

          // ISI TABEL
          ...jadwalList.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(item["agenda"]!)),
                  Text(item["deadline"]!),
                  Text(item["sisa"]!),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  // WIDGET TO DO LIST
  Widget _buildTodoList() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: todoList.map((item) {
          return CheckboxListTile(
            title: Text(item["task"],
                style: TextStyle(
                    decoration:
                        item["done"] ? TextDecoration.lineThrough : null)),
            value: item["done"],
            onChanged: (value) {
              setState(() {
                item["done"] = value!;
              });
            },
          );
        }).toList(),
      ),
    );
  }

  // WIDGET FORM INPUT TO DO
  Widget _buildTodoInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _todoController,
              decoration: InputDecoration(
                hintText: "Masukkan To Do yang Baru",
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: _addTodo,
            child: const Text("Submit"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
          ),
        ],
      ),
    );
  }

  // WIDGET NAVIGASI BAWAH
  Widget _bottomNavigation() {
    return Container(
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
    );
  }
}
