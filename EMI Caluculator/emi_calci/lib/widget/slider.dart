import 'package:flutter/material.dart';

class my_slider extends StatelessWidget {
  Function fn;
  int value;
  my_slider(this.fn, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        value: value.toDouble(),
        min: 1,
        max: 20,
        onChanged: (double value) {
          fn(value.toInt());
        },
      ),
    );
  }
}
