import 'package:flutter/material.dart';
/*import 'package:fl_chart/fl_chart.dart';

class KeuanganScreen extends StatelessWidget {
  const KeuanganScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna latar belakang
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A1C1C),
        elevation: 0,
        title: const Text("Keuangan", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // NAVBAR ATAS
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu, size: 32, color: Colors.black),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD2B48C), // Warna beige
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 10),
                      Text("Search", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                const Icon(Icons.account_circle, size: 32, color: Colors.black),
              ],
            ),
          ),

          // GRAFIK PEMASUKAN & PENGELUARAN
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Text(
                  "Pemasukan & Pengeluaran",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: LineChart(
                    LineChartData(
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true)),
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true)),
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 3),
                            const FlSpot(1, 2),
                            const FlSpot(2, 5),
                            const FlSpot(3, 4),
                            const FlSpot(4, 6),
                            const FlSpot(5, 3),
                            const FlSpot(6, 4),
                          ],
                          isCurved: true,
                          color: Colors.red,
                          dotData: FlDotData(show: false),
                        ),
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 4),
                            const FlSpot(1, 3),
                            const FlSpot(2, 2),
                            const FlSpot(3, 5),
                            const FlSpot(4, 7),
                            const FlSpot(5, 4),
                            const FlSpot(6, 6),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          dotData: FlDotData(show: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // TOMBOL "LAPORAN KEUANGAN"
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFFD2B48C),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(Icons.menu_book, size: 32, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  "Laporan Keuangan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // NAVIGASI BAWAH
          Spacer(),
          Container(
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
                Icon(Icons.notifications, size: 32, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
