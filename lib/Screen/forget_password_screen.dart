import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/widget/textfield_widget.dart';

import '../widget/button_widget.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  final Decoration decoration = Decoration();
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            top: true,
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 20,
                      ),
                  ),
                  const Text('Lấy lại mật khẩu',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(width: 30,),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text('Nhập số điện thoại bạn đã đăng kí tài khoản',
            ),
          ),
          InputField(
            controller: _phoneNumber,
            hint: 'Nhập số điện thoại',
            icon: Icon(
              Icons.call,
              color: decoration.iconColor,
              size: decoration.iconSize,
            ),
            type: TextInputType.number,
            formatter: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
            ],
          ),
          const Button(
            screen: '',
            text: 'Tiếp tục',
            boxColor: true,
          ),
        ],
      ),
    );
  }
}


class Decoration{
  Color iconColor = Colors.pinkAccent;
  Color textColor = Colors.pinkAccent;
  double iconSize = 20;
}