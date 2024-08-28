import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Function() onPress;
  final IconData icondata;
  const MyButton({super.key, required this.onPress, required this.icondata});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey[700],
        ),
        child: Center(
          child: Icon(
            widget.icondata,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
