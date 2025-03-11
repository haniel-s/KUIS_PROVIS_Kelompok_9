import 'package:flutter/material.dart';

class AbsensiOnlineScreen extends StatefulWidget {
  const AbsensiOnlineScreen({Key? key}) : super(key: key);

  @override
  _AbsensiOnlineScreenState createState() => _AbsensiOnlineScreenState();
}

class _AbsensiOnlineScreenState extends State<AbsensiOnlineScreen> {
  final List<Map<String, String>> absensiData = [
    {
      "pertemuan": "Pertemuan 1",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Hadir",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 2",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Hadir",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 3",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Hadir",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 4",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Absen",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 5",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Hadir",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 6",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Izin",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 7",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Sakit",
      "kelas": "B-200"
    },
    {
      "pertemuan": "Pertemuan 8",
      "jadwal": "Senin - 09:30",
      "kehadiran": "Hadir",
      "kelas": "B-200"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna latar merah gelap
      body: Column(
        children: [
          // HEADER
          _buildHeader(),

          // TABEL ABSENSI
          Expanded(child: _buildAbsensiTable()),
        ],
      ),

      // NAVIGASI BAWAH
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  // WIDGET HEADER (JUDUL + IKON BUKU)
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: const Color(0xFFD2B48C), // Warna beige
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.menu_book, size: 32, color: Colors.black),
          SizedBox(width: 8),
          Text("Absensi Online",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // WIDGET TABEL ABSENSI
  Widget _buildAbsensiTable() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 20,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.brown.shade800),
          columns: const [
            DataColumn(
                label:
                    Text("Pertemuan", style: TextStyle(color: Colors.white))),
            DataColumn(
                label: Text("Jadwal", style: TextStyle(color: Colors.white))),
            DataColumn(
                label:
                    Text("Kehadiran", style: TextStyle(color: Colors.white))),
            DataColumn(
                label: Text("Kelas", style: TextStyle(color: Colors.white))),
          ],
          rows: absensiData.map((absen) {
            return DataRow(
              cells: [
                DataCell(Text(absen["pertemuan"]!)),
                DataCell(Text(absen["jadwal"]!)),
                DataCell(Text(absen["kehadiran"]!,
                    style: TextStyle(
                        color: absen["kehadiran"] == "Hadir"
                            ? Colors.green
                            : absen["kehadiran"] == "Absen"
                                ? Colors.red
                                : Colors.orange))),
                DataCell(Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(absen["kelas"]!,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                )),
              ],
            );
          }).toList(),
        ),
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
