import 'package:flutter/material.dart';

import 'icon_container.dart';
import 'search_box.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFBFCFE),
      child: Row(
        children: const [
          SearchBox(),
          SizedBox(
            width: 20.0,
          ),
          IconContainer(
            width: 55.0,
            height: 55.0,
            icon: Icons.tune,
            containerColor: Color(0XFFE9F4EC),
            iconColor: Color(0XFF52BE6C),
            iconSize: 30.0,
          )
        ],
      ),
    );
  }
}
