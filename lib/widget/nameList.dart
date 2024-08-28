import 'package:flutter/material.dart';
import 'package:td_learn/widget/cards.dart';
import '../constant/names.dart';

class Namelist extends StatelessWidget {
  const Namelist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: name
            .map(
              (n) => Column(
                children: [
                  MyCustomCard(
                    name: n['name'].toString(),
                    serialNumber: int.parse(n['serialNumber'].toString()),
                    
                  ),
                  const Divider(
                    height: 10,
                  ),
                ],
              ),
            )
            .toList());
  }
}
