import 'package:flutter/material.dart';
import 'colors.dart';

class DetailsCardWithTextOnly extends StatelessWidget {
  final double width;
  final double height;
  final String? title;

  const DetailsCardWithTextOnly(
      {super.key, required this.width, required this.height, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1.5, color: mainColor),
      ),
      padding: const EdgeInsets.all(8),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "02/12/2023",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            height: 16,
            thickness: 1,
            color: Colors.black,
          ),
          Text(
            "Debited\nAmount",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            "\$ 20",
            style: TextStyle(
              fontSize: 18,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsCardWithImageAndText extends StatelessWidget {
  final double width;
  final String? title;
  final String? imageUrl;
  final Color borderColor;

  DetailsCardWithImageAndText(
      {super.key,
      required this.width,
      this.title,
      this.imageUrl,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 2),
      ),
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageUrl != null)
            Image.asset(
              imageUrl!,
              width: 35,
              height: 35,
              fit: BoxFit.cover,
            ),
          const SizedBox(height: 4),
          Text(
            title!,
            style: const TextStyle(
              fontSize: 11.0,
              color: Color.fromARGB(255, 59, 59, 59),
            ),
          ),
        ],
      ),
    );
  }
}
