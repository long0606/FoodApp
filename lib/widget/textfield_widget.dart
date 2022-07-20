import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {

  final Widget? icon;
  final TextEditingController? controller;
  final String? hint;
  final List<TextInputFormatter>? formatter;
  final TextInputType? type;

  InputField({
    Key? key,
    this.icon,
    this.hint,
    this.controller,
    this.formatter,
    this.type,
  }) : super(key: key);

  final Decoration decoration = Decoration();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: decoration.inputFieldColor,
      ),
        child: Row(
          children: <Widget>[
            icon == null? Container():Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
              child: icon,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 5, left: 10),
                child: TextFormField(
                  style: TextStyle(
                    fontWeight: decoration.inputWeight,
                    fontSize: decoration.inputFieldSize,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  controller: controller,
                  keyboardType: type,
                  inputFormatters: formatter,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10),
                    hintText: hint,
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: decoration.hintSize,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }
}

class Decoration{
  Color buttonTextColor = Colors.white;
  Color inputFieldColor = Colors.pink.shade50;
  double inputFieldSize = 20;
  double hintSize = 18;
  double titleSize = 18;
  final inputWeight = FontWeight.bold;

}