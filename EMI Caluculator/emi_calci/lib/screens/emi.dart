// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:emi_calci/widget/chart.dart';
import 'package:emi_calci/widget/slider.dart';
import 'package:emi_calci/widget/text.dart';
import 'package:flutter/material.dart';

class emi extends StatefulWidget {
  const emi({Key? key}) : super(key: key);

  @override
  State<emi> createState() => _emiState();

  // @override
  // _EmiState createState() => _EmiState();
}

class _emiState extends State<emi> {
  int _value = 1;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  double emi = 0.0;
  int loanAmount = 0;
  double total_interest = 0;
  int tenure = 0;
  takeSliderValue(int value) {
    _value = value;
    print('Rec Value from Slider $value');
    t3.text = _value.toString();
    setState(() {});
  }

   _compute() {

    loanAmount = int.parse(t1.text);

    int roi = int.parse(t2.text);

    int tenure = int.parse(t3.text);

    total_interest = double.parse((loanAmount * roi * tenure / 100).toStringAsFixed(2));

    emi = double.parse(((total_interest + loanAmount) / (12 * tenure)).toStringAsFixed(2));

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    text tb = text(lable: 'Tenure', icon: Icons.money_rounded, tc: t3);
    tb.setFunnction(takeSliderValue);
    Map<String, double> data_map = {
      "Total Interest": total_interest,
      "Total Amount": loanAmount.toDouble()
    };
    print("Data Map $data_map");

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            text(
              lable: 'Loan Amount',
              icon: Icons.money,
              tc: t1,
            ),
            text(
              lable: 'ROI',
              icon: Icons.monetization_on_rounded,
              tc: t2,
            ),
            tb,
            my_slider(takeSliderValue, _value),
            ElevatedButton(
                // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(value)),
                onPressed: () {
                  _compute();
                },
                child: Text('Compute')),
            Text(
              'EMI $emi',
              style: TextStyle(fontSize: 30),
            ),
            chart(data_map)
          ]),
        ),
        appBar: AppBar(
            title: Text('EMI Calculator'),
            backgroundColor: Colors.deepOrangeAccent));
  }
}
