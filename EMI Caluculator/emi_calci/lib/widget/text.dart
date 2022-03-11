// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class text extends StatelessWidget {
  late String lable;
  late IconData icon;
  Function? fn;
  late TextEditingController tc = TextEditingController();
  setFunnction(Function fn) {
    this.fn = fn;
  }
  // TextEditingController tc;

  // text(this.lable, this.icon, this.tc, this.fn);
  text(
      {required String lable,
      required IconData icon,
      required TextEditingController tc}) {
    this.lable = lable;
    this.icon = icon;
    this.tc = tc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: TextField(
        onChanged: (String value) {
          if (this.fn != null) {
            fn!(int.parse(value));
          }
        },
        controller: tc,
        decoration: InputDecoration(
            suffixIcon: Icon(icon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Text(lable),
            hintText: 'Type $lable'),
      ),
    );
  }
}
