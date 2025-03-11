import 'package:flutter/material.dart';

class MateriPerkuliahanScreen extends StatelessWidget {
  const MateriPerkuliahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna latar belakang
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A1C1C),
        elevation: 0,
        title: const Text("Materi Perkuliahan",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // HEADER - Judul dan Ikon
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFFD2B48C), // Warna beige
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(Icons.menu_book, size: 32, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  "Materi Perkuliahan\nSastra Mesin",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // TABEL DAFTAR MATA KULIAH
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(
                        label: Text("Pelajaran",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Jadwal",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Kelas",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Status",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: _getMateriRows(),
                ),
              ),
            ),
          ),

          // NAVIGASI BAWAH
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFD2B48C),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, size: 32, color: Colors.black),
                Icon(Icons.brightness_6, size: 32, color: Colors.black),
                Icon(Icons.calendar_today, size: 32, color: Colors.black),
                Icon(Icons.notifications, size: 32, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // DAFTAR DATA MATERI
  List<DataRow> _getMateriRows() {
    List<Map<String, String>> data = [
      {
        "pelajaran": "Membaca Nota Mesin",
        "jadwal": "Senin - 08:30",
        "kelas": "Senin - 09:30",
        "status": "📖"
      },
      {
        "pelajaran": "Proyek Konstruksi",
        "jadwal": "Senin - 09:30",
        "kelas": "Senin - 10:30",
        "status": "🛠"
      },
      {
        "pelajaran": "Sastra Mesin",
        "jadwal": "Senin - 10:30",
        "kelas": "Senin - 11:30",
        "status": "📚"
      },
      {
        "pelajaran": "Sastra Hooligan",
        "jadwal": "Selasa - 08:30",
        "kelas": "Selasa - 09:30",
        "status": "🔥"
      },
      {
        "pelajaran": "Teknik Kelarasi",
        "jadwal": "Selasa - 09:30",
        "kelas": "Selasa - 10:30",
        "status": "🛠"
      },
      {
        "pelajaran": "Ilmu Tak Pasti",
        "jadwal": "Rabu - 08:30",
        "kelas": "Rabu - 09:30",
        "status": "🤔"
      },
      {
        "pelajaran": "Administrasi Geofisika",
        "jadwal": "Rabu - 09:30",
        "kelas": "Rabu - 10:30",
        "status": "📑"
      },
      {
        "pelajaran": "Algoritma Pemrograman",
        "jadwal": "Rabu - 10:30",
        "kelas": "Rabu - 11:30",
        "status": "💻"
      },
    ];

    return data.map((materi) {
      return DataRow(cells: [
        DataCell(Text(materi["pelajaran"]!)),
        DataCell(Text(materi["jadwal"]!)),
        DataCell(Text(materi["kelas"]!)),
        DataCell(Text(materi["status"]!)),
      ]);
    }).toList();
  }
}
