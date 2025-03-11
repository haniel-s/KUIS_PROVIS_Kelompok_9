import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const CustomCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, size: 40, color: Colors.black),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
