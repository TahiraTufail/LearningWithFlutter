
import 'package:flutter/material.dart';

class MyCustomCard extends StatefulWidget {
  final String name;
  final int serialNumber;

  const MyCustomCard({
    super.key,
    required this.name,
    required this.serialNumber,
  });

  @override
  State<MyCustomCard> createState() => _MyCustomCardState();
}

class _MyCustomCardState extends State<MyCustomCard> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('${widget.serialNumber}'),
              const SizedBox(width: 10),
              Text(widget.name),
            ],
          ),
          GestureDetector(
            //condition ? true logic : false logic
            child:
                Icon(status ? Icons.favorite : Icons.favorite_border_outlined),
            onTap: () => setState(() {
              status = !status;
            }),
          ),
        ],
      ),
    );
  }
}
