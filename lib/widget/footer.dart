import 'package:flutter/material.dart';
import 'package:td_learn/widget/squareButton.dart';

class Footer extends StatelessWidget {
  final Function() onClick;
  const Footer({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: const Color.fromARGB(255, 211, 229, 238),
      child: Center(
        child: Squarebutton(
          icon: Icons.arrow_forward_rounded,
          onClick: onClick,
        ),
      ),
    );
  }
}
