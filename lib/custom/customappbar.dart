import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String text;
  final double? height;
  const MyAppBar({super.key, required this.text, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 80,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/appBackground.jpg'),
        fit: BoxFit.cover,
      )),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
