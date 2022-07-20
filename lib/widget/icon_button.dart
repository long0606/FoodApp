import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputIconButton extends StatelessWidget {

  final double size;
  final Color bgColor;
  final String text;
  final String image;
  final double height;
  final double width;
  const InputIconButton({
    Key? key,
    required this.text,
    required this.image,
    required this.height,
    required this.width,
    required this.bgColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            elevation: 0,
            primary: bgColor,
          ),
          onPressed: (){
          },
          child: Container(
            height: height,
              width: width,
              child: Image(
                  image: AssetImage(image),
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: size,
            ),
          ),
        ),
      ],
    );
  }
}

