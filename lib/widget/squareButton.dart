import 'package:flutter/material.dart';

class Squarebutton extends StatelessWidget {
  final IconData icon;
  final Function() onClick;
  const Squarebutton({super.key, required this.icon, required this.onClick });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: 80,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Color.fromARGB(255, 151, 162, 168),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
