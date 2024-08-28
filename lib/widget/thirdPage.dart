import 'package:flutter/material.dart';
import 'package:td_learn/custom/customappbar.dart';
import 'package:td_learn/widget/footer.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const MyAppBar(
              text: 'TD Learning',
            ),
            const Expanded(
              child: Placeholder(),
            ),
            Footer(
              onClick: () => onClick(context),
            ),
          ],
        ),
      ),
    );
  }
  void onClick(BuildContext context) {
    Navigator.pushNamed(context, '/secondpage');
  }
}