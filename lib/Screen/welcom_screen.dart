import 'package:flutter/material.dart';
import 'package:foodapp/Screen/login_screen.dart';

import '../widget/button_widget.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() {
    return _WelcomeState();
  }
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final Decoration decoration = Decoration();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/LoginScreen': (context) => const LoginScreen(),
      },
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/food-delivery2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 100),
                child: Text('Welcome to Laco',
                style: TextStyle(
                  color: decoration.titleColor,
                  fontSize: decoration.titleSize,
                  fontWeight: decoration.titleWeight,
                ),
                ),
              ),
              Button(screen: '/LoginScreen', text: 'Begin', boxColor: true,)
            ],
          ),
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