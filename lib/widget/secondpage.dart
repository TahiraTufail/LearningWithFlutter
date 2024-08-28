import 'package:flutter/material.dart';
import 'package:td_learn/custom/customappbar.dart';
import 'package:td_learn/widget/footer.dart';
import 'package:td_learn/widget/nameList.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

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
              child: Namelist(),
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
    Navigator.pushNamed(context, '/thirdPage');
  }
}
