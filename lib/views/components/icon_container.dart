import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final Color containerColor;
  final double? iconSize;
  final Color iconColor;
  const IconContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.icon,
      required this.containerColor,
      required this.iconColor,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: containerColor,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: iconSize,
        ),
        color: iconColor,
      ),
    );
  }
}
