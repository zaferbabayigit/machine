import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = '10'.obs;
  var secondNumber = '20'.obs;
  var mathResults = '30'.obs;
  var oparation = '+'.obs;

  resetAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    mathResults.value = '0';
    oparation.value = '+';
  }

  addNumber(String number) {
    if (mathResults.value == '0') return mathResults.value = number;
    mathResults.value = mathResults.value = number;
  }
}
