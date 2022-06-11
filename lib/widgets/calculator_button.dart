import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  String text;
  int fillColor;
  int textColor;
  double textSize;
  Function callback;

  CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
          width: 70,
          height: 75,
          child: ElevatedButton(
            onPressed: () => callback(text),
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              primary: Color(fillColor).withOpacity(0.6), //background color
              onPrimary: Color(0xFF455A64).withOpacity(0.6), //ripple color
            ),
            child: Text(
              text,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: textSize,
                  color: Color(textColor),
                ),
              ),
            ),
          )),
    );
  }
}
