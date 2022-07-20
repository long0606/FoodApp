import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/Screen/forget_password_screen.dart';
import 'package:foodapp/Screen/main_screen.dart';
import 'package:foodapp/widget/button_widget.dart';
import 'package:foodapp/widget/icon_button.dart';
import 'package:foodapp/widget/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Decoration decoration = Decoration();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/MainScreen': (context) => const MainScreen(),
        '/ForgetPassword': (context) => ForgetPassword(),
      },
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('Images/Login.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                hint: 'Nhập số điện thoại',
                controller: _phoneNumber,
                icon: Icon(
                  Icons.call,
                  color: decoration.iconColor,
                  size: decoration.iconSize,
                ),
                type: TextInputType.number,
                formatter: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
              ),
              InputField(
                hint: 'Nhập mật khẩu',
                controller: _password,
                icon: Icon(
                  Icons.lock_outline,
                  color: decoration.iconColor,
                  size: decoration.iconSize,
                ),
              ),
              const Button(
                screen: '/MainScreen',
                text: 'Login',
                boxColor: true,
              ),
              const Button(
                screen: '/ForgetPassword',
                text: 'Forgot password?',
                boxColor: false,
                textColor: Colors.pinkAccent,
              ),
              Column(
                children: [
                  const Text(
                      'Khi bạn đăng nhập hoặc đăng kí, bạn đã đồng ý với'),
                  Text(
                    'Điều khoản dịch vụ và chính sách bảo mật',
                    style: TextStyle(
                      color: decoration.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('của Laco'),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text('Hoặc')),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: const InputIconButton(
                        size: 15,
                          bgColor: Color(0xFFFFBAB3),
                          height: 35,
                          width: 35,
                          image: 'Images/Fb_logo.jpg',
                          text: 'Facebook'),
                    ),
                    const InputIconButton(
                      size: 15,
                        bgColor: Color(0xFFFFBAB3),
                        height: 35,
                        width: 35,
                        image: 'Images/Apple-Logo.png',
                        text: 'Apple'),
                    const InputIconButton(
                      size: 15,
                        bgColor: Color(0xFFFFBAB3),
                        height: 35,
                        width: 35,
                        image: 'Images/Google_Logo.svg.png',
                        text: 'Google')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Decoration {
  Color iconColor = Colors.pinkAccent;
  Color textColor = Colors.pinkAccent;
  double iconSize = 20;
}
