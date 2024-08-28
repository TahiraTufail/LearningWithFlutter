import 'package:flutter/material.dart';
import 'package:td_learn/custom/circlebutton.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  Color textcolor = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$_counter',
          style: TextStyle(
              fontSize: 55, color: textcolor, fontWeight: FontWeight.bold),
        ),
       const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              onPress: _handleIncrement,
              icondata: Icons.add,
            ),
            const SizedBox(width: 20),
            MyButton(
              onPress: _handleDecrement,
              icondata: Icons.remove,
            ),
          ],
        ),
      ],
    );
  }

  void _handleIncrement() {
    setState(() {
      _counter++;

      if (_counter <= 10 && _counter > 0) {
        textcolor = Colors.deepPurpleAccent;
      } else if (_counter <= 20) {
        textcolor = Colors.green;
      }
    });
  }

  void _handleDecrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;

        if (_counter <= 10) {
          textcolor = Colors.deepPurpleAccent;
        } else if (_counter <= 20) {
        textcolor = Colors.green;
        }
      }
    });
  }
}
