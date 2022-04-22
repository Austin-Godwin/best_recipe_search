import 'package:flutter/material.dart';

class RectangularFloatingActionButton extends StatelessWidget {
  const RectangularFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 3,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: FloatingActionButton(
        onPressed: () {},
        // isExtended: true,
        backgroundColor: const Color(0xFF111111),
        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "Start Cook!",
              style: TextStyle(fontSize: 20.0),
            ),
            Icon(Icons.arrow_forward_rounded)
          ],
        ),
      ),
    );
  }
}
