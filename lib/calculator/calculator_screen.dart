import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine/calculator/calculator_controller.dart';
import 'package:machine/widget/calc_button.dart';
import 'package:machine/widget/math_results.dart';

class CalculatorScreen extends StatelessWidget {
  final caculatorCtrl = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResults(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                    text: 'AC',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => caculatorCtrl.resetAll()),
                CalculatorButton(
                  text: '+/-',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => ('+/-'),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => print('del'),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => caculatorCtrl.addNumber('7'),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () => caculatorCtrl.addNumber('8'),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => caculatorCtrl.addNumber('9'),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () => caculatorCtrl.addNumber('4'),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () => caculatorCtrl.addNumber('5'),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () => caculatorCtrl.addNumber('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => caculatorCtrl.addNumber('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () => caculatorCtrl.addNumber('1'),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => caculatorCtrl.addNumber('2'),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => caculatorCtrl.addNumber('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => caculatorCtrl.addNumber('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => print('.'),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => print('='),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
