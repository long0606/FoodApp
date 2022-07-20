import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key,
    required this.screen,
    required this.text,
    required this.boxColor,
    this.textColor}) : super(key: key);

 final String screen ;
 final String text ;
 final bool boxColor;
 final Color? textColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   Decoration  decoration = Decoration();
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15,left: 15, right: 15),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            screen,
          );
        },
        child: Text(text,
          style: TextStyle(
            fontSize: decoration.titleSize,
            fontWeight: decoration.titleWeight,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: boxColor == true ? decoration.buttonColor:null,
          // if box color true => BackGroundColor = buttonColor, else = none color
          primary: textColor ?? decoration.buttonTextColor,
          // if textColor null => BackGroundColor = buttonColor, else = textColor
          padding: const EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

class Decoration{
  Color titleColor = Colors.pinkAccent;
  double titleSize = 18;
  final titleWeight = FontWeight.bold;
  Color buttonColor = Colors.pinkAccent;
  Color buttonTextColor = Colors.white;
}