import 'package:flutter/material.dart';

class PesanGroupScreen extends StatefulWidget {
  const PesanGroupScreen({Key? key}) : super(key: key);

  @override
  _PesanGroupScreenState createState() => _PesanGroupScreenState();
}

class _PesanGroupScreenState extends State<PesanGroupScreen> {
  // Dummy data untuk daftar grup
  final List<Map<String, String>> groupList = [
    {
      "name": "Kelompok SBY",
      "lastMessage": "Hahahaha!",
      "time": "Today, 5:32PM"
    },
    {
      "name": "Kelompok ProVis",
      "lastMessage": "Kyaaaa!??",
      "time": "Yesterday, 12:13PM"
    },
    {
      "name": "Kelas C2",
      "lastMessage": "It's not going to happen",
      "time": "Wednesday, 9:13AM"
    },
  ];

  // Dummy data untuk daftar pesan
  final List<Map<String, dynamic>> messageList = [
    {
      "name": "Antony Montana",
      "message": "Mekdi yuk!",
      "time": "Today, 5:32PM",
      "unread": false
    },
    {
      "name": "Jovan Rius",
      "message": "Bagi",
      "time": "Today, 12:13PM",
      "unread": false
    },
    {
      "name": "Elvira",
      "message": "You have to report 1...",
      "time": "Today, 2:49PM",
      "unread": true
    },
    {
      "name": "Bapak Herbert",
      "message": "Nevermind bro",
      "time": "Wednesday, 12:13PM",
      "unread": true
    },
    {
      "name": "Dzaki",
      "message": "Okay, brother. let's see..",
      "time": "Wednesday, 11:23AM",
      "unread": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF4A1C1C), // Warna latar belakang merah gelap
      body: Row(
        children: [
          // SIDEBAR NAVIGASI
          _buildSidebar(),

          // KONTEN UTAMA
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SEARCH BAR
                  _buildSearchBar(),

                  const SizedBox(height: 20),

                  // DAFTAR GRUP
                  _sectionTitle("Groups"),
                  _buildGroupList(),

                  const SizedBox(height: 20),

                  // DAFTAR PESAN
                  _sectionTitle("Pesan"),
                  _buildMessageList(),
                ],
              ),
            ),
          ),
        ],
      ),

      // NAVIGASI BAWAH
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  // WIDGET SIDEBAR NAVIGASI
  Widget _buildSidebar() {
    return Container(
      width: 80,
      color: const Color(0xFFD2B48C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Icon(Icons.account_circle, size: 40, color: Colors.black),
          ),
          SizedBox(height: 30),
          Icon(Icons.home, size: 32, color: Colors.black),
          SizedBox(height: 30),
          Icon(Icons.chat_bubble, size: 32, color: Colors.black),
          SizedBox(height: 30),
          Icon(Icons.notifications, size: 32, color: Colors.black),
          SizedBox(height: 30),
          Icon(Icons.settings, size: 32, color: Colors.black),
        ],
      ),
    );
  }

  // WIDGET SEARCH BAR
  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          border: InputBorder.none,
          icon: Icon(Icons.search, color: Colors.black54),
        ),
      ),
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

  // WIDGET LIST GRUP
  Widget _buildGroupList() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: groupList.map((group) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 20, backgroundColor: Colors.black12),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(group["name"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(group["lastMessage"]!,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black54)),
                    Text(group["time"]!,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.black38)),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  // WIDGET LIST PESAN
  Widget _buildMessageList() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: messageList.map((message) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 20, backgroundColor: Colors.black12),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(message["name"],
                        style: const TextStyle(fontWeight: FontWeight.bold))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(message["message"],
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black54)),
                    Text(message["time"],
                        style: const TextStyle(
                            fontSize: 12, color: Colors.black38)),
                  ],
                ),
                if (message["unread"])
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Center(
                        child: Text("!",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                  ),
              ],
            ),
          );
        }).toList(),
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
