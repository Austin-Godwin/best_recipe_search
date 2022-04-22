import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0XFF32BD68)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Align(
              alignment: Alignment.center,
              child: Text(
                "1 Serving",
                style: TextStyle(color: Color(0XFFFFFFFF)),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
