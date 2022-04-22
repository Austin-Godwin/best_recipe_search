import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55.0,
        decoration: BoxDecoration(
            color: const Color(0XFFFFFFFF),
            borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: TextFormField(
            decoration: const InputDecoration(
              // filled: true,
              border: InputBorder.none,
              hintText: "Search Destination",
              hintStyle: TextStyle(color: Color(0XFFC4C4C4)),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0XFFC4C4C4),
              ),
              fillColor: Color(0XFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
