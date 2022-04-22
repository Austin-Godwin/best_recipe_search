import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'circle_icon.dart';
import 'large_text.dart';

class RecipeAppBar extends StatelessWidget {
  const RecipeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverPinnedHeader(
          child: AspectRatio(
            aspectRatio: MediaQuery.of(context).size.width / 40.0,
            child: Container(
              color: const Color(0XFFFBFCFE),
            ),
          ),
        ),
        SliverPinnedHeader(
          child: Container(
            color: const Color(0XFFFBFCFE),
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleIcon(
                  backgroundColor: const Color(0XFFFFFFFF),
                  icon: Icons.arrow_back,
                  iconColor: const Color(0xFFB8B8B8),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const LargeText(
                    text: "Salmon Sushi", textColor: Color(0xFF000000)),
                const CircleIcon(
                  backgroundColor: Color(0XFFFFFFFF),
                  icon: Icons.more_horiz_rounded,
                  iconColor: Color(0xFFB8B8B8),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
