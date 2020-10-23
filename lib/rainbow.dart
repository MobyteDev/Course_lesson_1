import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue[100], Colors.blue, Colors.purple];
    return Scaffold(
      body: Center(
        child: Flexible(
                  child: Column(
            children: colors.map((color) => Expanded(
              child: Container(color: color))).toList()
          ),
        ),
      ),
    );
  }
}
