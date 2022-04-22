import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final Color? tabColor;
  final String tabText;
  final Color? tabTextColor;
  const CustomTab(
      {Key? key, required this.tabText, this.tabColor, this.tabTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 55,
      child: Container(
        // height: 55.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: tabColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            tabText,
            style: TextStyle(
              color: tabTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
