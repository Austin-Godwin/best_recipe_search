import 'package:flutter/material.dart';

import 'large_text.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(aspectRatio: MediaQuery.of(context).size.width / 10),
        const LargeText(
          text: "Find Best Recipe \nFor Cooking",
          textColor: Color(0xFF040207),
        ),
      ],
    );
  }
}
