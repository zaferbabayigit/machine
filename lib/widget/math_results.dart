import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:machine/calculator/calculator_controller.dart';
import 'package:machine/widget/line_separator.dart';

import 'main_result.dart';
import 'sub_result.dart';

class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);
  final calculatorCtrl = Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${calculatorCtrl.firstNumber}'),
          SubResult(text: '${calculatorCtrl.oparation}'),
          SubResult(text: '${calculatorCtrl.secondNumber}'),
          LineSeparator(),
          MainResultText(text: '${calculatorCtrl.mathResults}'),
        ],
      ),
    );
  }
}
