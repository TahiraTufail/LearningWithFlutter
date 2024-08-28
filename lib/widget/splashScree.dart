import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var size = 50.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 1,
        ), () {
      setState(() {
        size = 250.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AnimatedContainer(
          width: size,
          height: size,
          curve: Curves.easeInOutBack,
          duration: const Duration(seconds: 1),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/hijabBazzarLogo.jpg'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
