import 'package:flutter/material.dart';
import 'package:td_learn/custom/customappbar.dart';
import 'package:td_learn/widget/counter.dart';
import 'package:td_learn/widget/footer.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
          const  MyAppBar(
              text: 'TD Learning',
            ),
           const Expanded(
              child: Counter(),
            ),
            Footer(
              onClick: ()=> onClick(context),
            ),
          ],
        ),
      ),
    );
  }

  void onClick(BuildContext context){
    Navigator.pushNamed(context, '/secondpage');
  }
}
