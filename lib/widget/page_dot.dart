import 'package:flutter/material.dart';

class PageDot extends StatelessWidget {

  final bool isActive;
  const PageDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: isActive == false?Colors.pink.shade50:Colors.pink.shade200,
      ),
    );
  }
}
