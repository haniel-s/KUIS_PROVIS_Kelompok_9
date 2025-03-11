import 'package:flutter/material.dart';

class PesanGroup2Screen extends StatefulWidget {
  const PesanGroup2Screen({Key? key}) : super(key: key);

  @override
  _PesanGroup2ScreenState createState() => _PesanGroup2ScreenState();
}

class _PesanGroup2ScreenState extends State<PesanGroup2Screen> {
  TextEditingController _messageController = TextEditingController();

  List<Map<String, dynamic>> messages = [
    {"text": "Hey There!", "isMe": false, "time": "8:30pm"},
    {"text": "How are you?", "isMe": false, "time": "8:30pm"},
    {"text": "Hello!", "isMe": true, "time": "8:33pm"},
    {"text": "I am fine and how are you?", "isMe": true, "time": "8:34pm"},
    {
      "text": "I am doing well, Can we meet tomorrow?",
      "isMe": false,
      "time": "8:36pm"
    },
    {"text": "Yes Sure!", "isMe": true, "time": "8:56pm"},
  ];

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        messages.add(
            {"text": _messageController.text, "isMe": true, "time": "Now"});
        _messageController.clear();
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

          // CHAT MESSAGES
          Expanded(child: _buildChatMessages()),

          // INPUT PESAN
          _buildMessageInput(),
        ],
      ),

      // NAVIGASI BAWAH
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  // WIDGET HEADER (Nama + Status + Ikon)
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      color: Colors.white,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage:
                AssetImage("assets/profile.jpg"), // Ganti dengan gambar profil
            radius: 24,
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Anil",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Online - Last seen, 2:02pm",
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.black)),
        ],
      ),
    );
  }

  // WIDGET LIST CHAT MESSAGES
  Widget _buildChatMessages() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return _chatBubble(messages[index]["text"], messages[index]["isMe"],
            messages[index]["time"]);
      },
    );
  }

  // WIDGET BUBBLE CHAT
  Widget _chatBubble(String text, bool isMe, String time) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe ? const Color(0xFFD2B48C) : Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(text, style: const TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(time,
                style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  // WIDGET INPUT PESAN
  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emoji_emotions, color: Colors.grey)),
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                  hintText: "Type your message here...",
                  border: InputBorder.none),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.grey)),
          IconButton(
              onPressed: _sendMessage,
              icon: const Icon(Icons.mic, color: Colors.grey)),
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
