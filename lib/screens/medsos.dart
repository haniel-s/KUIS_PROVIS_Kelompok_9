import 'package:flutter/material.dart';
/*import 'package:carousel_slider/carousel_slider.dart';

class MedsosScreen extends StatelessWidget {
  const MedsosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      "https://source.unsplash.com/random/800x600?architecture",
      "https://source.unsplash.com/random/800x600?city",
      "https://source.unsplash.com/random/800x600?building",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Medsos", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // HEADER POST
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 20,
                      child: Icon(Icons.account_circle,
                          size: 40, color: Colors.black),
                    ),
                    const SizedBox(width: 10),
                    const Text("User Name",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                const Icon(Icons.more_vert, size: 24, color: Colors.black),
              ],
            ),
          ),

          // GAMBAR POST (CAROUSEL)
          Stack(
            alignment: Alignment.topRight,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                ),
                items: imageUrls.map((url) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "1/10",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),

          // IKON INTERAKSI
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: const Icon(Icons.favorite_border, size: 28),
                        onPressed: () {}),
                    IconButton(
                        icon: const Icon(Icons.chat_bubble_outline, size: 28),
                        onPressed: () {}),
                    IconButton(
                        icon: const Icon(Icons.send, size: 28),
                        onPressed: () {}),
                  ],
                ),
                IconButton(
                    icon: const Icon(Icons.bookmark_border, size: 28),
                    onPressed: () {}),
              ],
            ),
          ),

          // LIKE DAN DESKRIPSI
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("12,542 Likes",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor.",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  "View all 123 comments",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
              ],
            ),
          ),

          // NAVIGASI BAWAH
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFF4A1C1C),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.emoji_emotions, size: 32, color: Colors.white),
                Icon(Icons.brightness_6, size: 32, color: Colors.white),
                Icon(Icons.chat_bubble_outline, size: 32, color: Colors.white),
                Icon(Icons.notifications, size: 32, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
