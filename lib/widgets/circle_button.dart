import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function() press;
  const CircleButton(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          color: Colors.black,
          iconSize: iconSize,
          onPressed: press,
          icon: Icon(
            icon,
          )),
    );
  }
}
