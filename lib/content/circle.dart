import 'package:flutter/material.dart';

class Cicularpart extends StatelessWidget {
  final String imageUrl;
  final String text;

  const Cicularpart({
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imageUrl),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ))
          ],
        ));
  }
}
