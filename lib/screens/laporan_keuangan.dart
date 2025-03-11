import 'package:flutter/material.dart';
/*import 'package:fl_chart/fl_chart.dart';

class LaporanKeuanganScreen extends StatefulWidget {
  const LaporanKeuanganScreen({Key? key}) : super(key: key);

  @override
  _LaporanKeuanganScreenState createState() => _LaporanKeuanganScreenState();
}

class _LaporanKeuanganScreenState extends State<LaporanKeuanganScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A1C1C), // Warna latar merah gelap
      body: Column(
        children: [
          // HEADER
          _buildHeader(),

          // GRAFIK PEMASUKAN & PENGELUARAN
          _buildLineChart(),

          // KATEGORI PENGELUARAN
          _buildPieChart(),
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
          Text("Laporan Keuangan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // WIDGET GRAFIK LINE CHART (PEMASUKAN & PENGELUARAN)
  Widget _buildLineChart() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Pemasukan & Pengeluaran",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 3),
                      const FlSpot(1, 2),
                      const FlSpot(2, 5),
                      const FlSpot(3, 3.5),
                      const FlSpot(4, 4),
                      const FlSpot(5, 3),
                      const FlSpot(6, 4),
                    ],
                    isCurved: true,
                    colors: [Colors.blue],
                    barWidth: 3,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(show: false),
                  ),
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 2),
                      const FlSpot(1, 3),
                      const FlSpot(2, 2.5),
                      const FlSpot(3, 2),
                      const FlSpot(4, 3),
                      const FlSpot(5, 2.5),
                      const FlSpot(6, 3.5),
                    ],
                    isCurved: true,
                    colors: [Colors.red],
                    barWidth: 3,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // WIDGET PIE CHART (KATEGORI PENGELUARAN)
  Widget _buildPieChart() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Kategori Pengeluaran",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSinglePieChart("Makan", 68, Colors.red),
              _buildSinglePieChart("Hiburan", 22, Colors.green),
              _buildSinglePieChart("Investasi", 62, Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

  // WIDGET PIE CHART PER KATEGORI
  Widget _buildSinglePieChart(String label, double value, Color color) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: value,
                      color: color,
                      radius: 20,
                      title: "${value.toInt()}%",
                      titleStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                  sectionsSpace: 0,
                  centerSpaceRadius: 25,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
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
