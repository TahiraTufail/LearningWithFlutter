import 'package:flutter/material.dart';
import 'package:td_learn/widget/firstpage.dart';
import 'package:td_learn/widget/secondpage.dart';
import 'package:td_learn/widget/splashScree.dart';
import 'package:td_learn/widget/thirdPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const Firstpage(),
        '/secondpage':(context) => const Secondpage(),
        '/thirdPage' : (context) => const ThirdPage(), 
        
      },
    ),
  );
}
