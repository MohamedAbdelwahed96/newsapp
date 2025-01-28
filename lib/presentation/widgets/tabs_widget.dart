import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final bool tab_name;
  final String name;

  const Tabs({required this.tab_name, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Container(
            width: 80,
            child: Center(
              child: Text(name,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      color: tab_name == true ? Colors.black : Colors.grey)),
            ),
          ),
        ),
        tab_name == true?Container(height: 5, width: 80, color: Color.fromRGBO(44,179,252, 1),):SizedBox()
      ],
    );
  }
}
