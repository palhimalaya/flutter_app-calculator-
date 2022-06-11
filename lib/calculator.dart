import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/widgets/calculator_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == 'DEL') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/' ||
        btnVal == '%') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '÷') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '%') {
        res = (firstNum % secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        backgroundColor: Color(0xFF8D6E63),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Color(0x66FFFFFF),
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: 'AC',
                fillColor: 0xFFF4FF81,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: 'C',
                fillColor: 0xFF1DE9B6,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '%',
                fillColor: 0xFF1DE9B6,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '÷',
                fillColor: 0xFF1DE9B6,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: '7',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '8',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '9',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: 'X',
                fillColor: 0xFF1DE9B6,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: '4',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '5',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '6',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '-',
                fillColor: 0xFF1DE9B6,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: '1',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '2',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '3',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '+',
                fillColor: 0xFF1DE9B6,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CalculatorButton(
                text: '0',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '.',
                fillColor: 0xFFFFCCBC,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: 'DEL',
                fillColor: 0xFFF57F17,
                textColor: 0xFF000000,
                textSize: 20,
                callback: btnOnClick,
              ),
              CalculatorButton(
                text: '=',
                fillColor: 0xFFE53935,
                textColor: 0xFF000000,
                textSize: 24,
                callback: btnOnClick,
              ),
            ]),
          ],
        )));
  }
}
