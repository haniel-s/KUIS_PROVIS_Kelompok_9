import 'package:flutter/material.dart';
/*
//import 'package:file_picker/file_picker.dart';

class PengumpulanTugasScreen extends StatefulWidget {
  const PengumpulanTugasScreen({Key? key}) : super(key: key);

  @override
  _PengumpulanTugasScreenState createState() => _PengumpulanTugasScreenState();
}

class _PengumpulanTugasScreenState extends State<PengumpulanTugasScreen> {
  TextEditingController _jawabanController = TextEditingController();
  String? _fileName;

  Future<void> _pickFile() async {
   // FilePickerResult? result = await FilePicker.platform.pickFiles();
    //if (result != null) {
      setState(() {
      //  _fileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna latar merah gelap
      body: Column(
        children: [
          // HEADER
          _buildHeader(),

          // BOX SOAL & INPUT JAWABAN
          Expanded(child: _buildContent()),
        ],
      ),

      // NAVIGASI BAWAH
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  // WIDGET HEADER (JUDUL + IKON DOKUMEN)
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: const Color(0xFFD2B48C), // Warna beige
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.description, size: 32, color: Colors.black),
          SizedBox(width: 8),
          Text("Pengumpulan Tugas Online",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // WIDGET BOX SOAL & INPUT
  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // BOX SOAL
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "Algoritma Pemrograman\n\n1. 1+1 di loop 10 kali hasilnya berapa? beri file docs nya",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),

          // INPUT TEKS / FILE
          const Text("Input",
              style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(height: 8),

          // INPUT JAWABAN
          TextField(
            controller: _jawabanController,
            decoration: InputDecoration(
              hintText: "Masukkan Jawaban Atau File Tugas",
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // FILE PICKER BUTTON
          ElevatedButton(
            onPressed: _pickFile,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown.shade700,
            ),
            child:
                const Text("Pilih File", style: TextStyle(color: Colors.white)),
          ),

          // TAMPILKAN FILE YANG DIPILIH
          if (_fileName != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text("File: $_fileName",
                  style: const TextStyle(color: Colors.white)),
            ),

          const SizedBox(height: 16),

          // TOMBOL SUBMIT
          Center(
            child: ElevatedButton(
              onPressed: () {
                // LOGIKA SUBMIT BISA DITAMBAHKAN DI SINI
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text("Submit",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
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
*/
