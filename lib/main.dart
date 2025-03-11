import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/mental_health.dart';
import 'screens/gratitude_journal.dart';
import 'screens/konseling_dengan_para_ahli.dart';
import 'screens/akademi.dart';
import 'screens/materi_perkuliahan.dart';
import 'screens/nilai_perkuliahan.dart';
import 'screens/keuangan.dart';
import 'screens/medsos.dart';
import 'screens/elearning.dart';
import 'screens/jadwal_todo.dart';
import 'screens/pesan_group.dart';
import 'screens/notifikasi.dart';
import 'screens/laporan_keuangan.dart';
import 'screens/absensi_online.dart';
import 'screens/pengumpulan_tugas.dart';
import 'screens/pesan_group2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizMenu(),
    );
  }
}

class QuizMenu extends StatelessWidget {
  const QuizMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz 1')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuButton(title: "Main Screen", screen: const HomeScreen()),
              MenuButton(
                  title: "Mental Health", screen: const MentalHealthScreen()),
              MenuButton(
                  title: "Gratitude Journal",
                  screen: const GratitudeJournalScreen()),
              MenuButton(
                  title: "Konseling dengan Para Ahli",
                  screen: const KonselingDenganParaAhliScreen()),
              MenuButton(title: "Akademik", screen: const AkademiScreen()),
              MenuButton(
                  title: "Materi Perkuliahan",
                  screen: const MateriPerkuliahanScreen()),
              MenuButton(
                  title: "Nilai Perkuliahan",
                  screen: const NilaiPerkuliahanScreen()),
              //MenuButton(title: "Keuangan", screen: const KeuanganScreen()),
              //MenuButton(title: "Medsos", screen: const MedsosScreen()),
              /* MenuButton(title: "Elearning", screen: const ElearningScreen()),
              MenuButton(
                  title: "Jadwal & To Do", screen: const JadwalTodoScreen()),
              MenuButton(
                  title: "Pesan & Group", screen: const PesanGroupScreen()),
              MenuButton(title: "Notifikasi", screen: const NotifikasiScreen()),
              MenuButton(
                  title: "Laporan Keuangan",
                /* screen: const LaporanKeuanganScreen()),
              MenuButton(
                  title: "Absensi Online", screen: const AbsensiOnlineScreen()),*/
              MenuButton(
                  title: "Pengumpulan Tugas Online",
                  //screen: const PengumpulanTugasScreen()),
              MenuButton(
                  title: "Pesan & Group 2", screen: const PesanGroup2Screen()),*/
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final Widget screen;

  const MenuButton({Key? key, required this.title, required this.screen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(title),
      ),
    );
  }
}
