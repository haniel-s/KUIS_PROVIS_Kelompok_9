import 'package:flutter/material.dart';

class NilaiPerkuliahanScreen extends StatelessWidget {
  const NilaiPerkuliahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna latar belakang
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A1C1C),
        elevation: 0,
        title: const Text("Nilai Perkuliahan",
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
                Icon(Icons.assignment, size: 32, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  "Nilai Perkuliahan\nIPK, IP dan nilai per mata kuliah",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // TABEL NILAI
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
                        label: Text("Nilai",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: _getNilaiRows(),
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

  // DAFTAR DATA NILAI
  List<DataRow> _getNilaiRows() {
    List<Map<String, String>> data = [
      {
        "pelajaran": "Algoritma Pemrograman",
        "jadwal": "Senin - 09:30",
        "kelas": "Senin - 09:30",
        "nilai": "🟡"
      },
      {
        "pelajaran": "Proyek Konstruksi",
        "jadwal": "Senin - 12:30",
        "kelas": "Senin - 09:30",
        "nilai": "🔴"
      },
      {
        "pelajaran": "Sastra Mesin",
        "jadwal": "Senin - 13:30",
        "kelas": "Senin - 09:30",
        "nilai": "🟡"
      },
      {
        "pelajaran": "Sastra Hooligan",
        "jadwal": "Selasa - 09:30",
        "kelas": "Selasa - 09:30",
        "nilai": "🔴"
      },
      {
        "pelajaran": "Teknik Keluarga",
        "jadwal": "Selasa - 13:30",
        "kelas": "Selasa - 09:30",
        "nilai": "🟡"
      },
      {
        "pelajaran": "Ilmu Tak Pasti",
        "jadwal": "Rabu - 17:30",
        "kelas": "Rabu - 09:30",
        "nilai": "🔴"
      },
      {
        "pelajaran": "Pendidikan Lingkungan Hidup",
        "jadwal": "Rabu - 12:30",
        "kelas": "Senin - 09:30",
        "nilai": "🟡"
      },
      {
        "pelajaran": "Administrasi Geofisika",
        "jadwal": "Rabu - 18:30",
        "kelas": "Senin - 09:30",
        "nilai": "🟡"
      },
    ];

    return data.map((nilai) {
      return DataRow(cells: [
        DataCell(Text(nilai["pelajaran"]!)),
        DataCell(Text(nilai["jadwal"]!)),
        DataCell(Text(nilai["kelas"]!)),
        DataCell(Text(nilai["nilai"]!)),
      ]);
    }).toList();
  }
}
