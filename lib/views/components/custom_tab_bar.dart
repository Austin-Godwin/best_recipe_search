import 'package:flutter/material.dart';

import 'custom_tab.dart';

// class StatefulCustomTabBar extends StatefulWidget {
//   final TabController controller;
//   const StatefulCustomTabBar({Key? key, required this.controller})
//       : super(key: key);

//   @override
//   State<StatefulCustomTabBar> createState() => _CustomTabBarState();
// }

// class _CustomTabBarState extends State<StatefulCustomTabBar> {
//   bool isSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFFFBFCFE),
//       child: TabBar(
//         labelColor: const Color(0xFFFFFFFF),
//         unselectedLabelColor: const Color(0XFFC8C6C7),
//         indicator: BoxDecoration(
//           borderRadius: BorderRadius.circular(15.0),
//           color: const Color(0XFF52BE6C),
//         ),
//         // labelColor: Colors.white,
//         isScrollable: true,
//         labelPadding: const EdgeInsets.all(10.0),
//         padding: EdgeInsets.zero,
//         indicatorColor: Colors.transparent,
//         // indicatorWeight: 5,
//         controller: widget.controller,
//         tabs: const [
//           CustomTab(
//             tabText: "All",
//             // tabColor: Color(0XFFFFFFFF),
//             // tabTextColor: Color(0XFFC8C6C7),
//           ),
//           CustomTab(
//             tabText: "Sushi",
//             // tabColor: Color(0XFFFFFFFF),
//             // tabTextColor: Color(0XFFC8C6C7),
//           ),
//           CustomTab(
//             tabText: "Burger",
//             // tabColor: Color(0XFFFFFFFF),
//             // tabTextColor: Color(0XFFC8C6C7),
//           ),
//           CustomTab(
//             tabText: "Something Else",
//             // tabColor: Color(0XFFFFFFFF),
//             // tabTextColor: Color(0XFFC8C6C7),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  const CustomTabBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFBFCFE),
      child: TabBar(
        // labelColor: Colors.white,
        isScrollable: true,
        labelPadding: const EdgeInsets.all(10.0),
        padding: EdgeInsets.zero,
        indicatorColor: Colors.transparent,
        controller: controller,
        tabs: const [
          CustomTab(
            tabText: "All",
            tabColor: Color(0XFF52BE6C),
            tabTextColor: Color(0xFFFFFFFF),
          ),
          CustomTab(
            tabText: "Sushi",
            tabColor: Color(0XFFFFFFFF),
            tabTextColor: Color(0XFFC8C6C7),
          ),
          CustomTab(
            tabText: "Burger",
            tabColor: Color(0XFFFFFFFF),
            tabTextColor: Color(0XFFC8C6C7),
          ),
          CustomTab(
            tabText: "Something Else",
            tabColor: Color(0XFFFFFFFF),
            tabTextColor: Color(0XFFC8C6C7),
          ),
        ],
      ),
    );
  }
}
