import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final Function()? onPressed;
  const CircleIcon(
      {Key? key,
      required this.backgroundColor,
      required this.icon,
      required this.iconColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: backgroundColor,
      child: Center(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: iconColor)),
      ),
    );
  }
}
