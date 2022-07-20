import 'package:flutter/material.dart';
import 'package:foodapp/widget/icon_button.dart';

import '../Screen/main_screen.dart';

class ListButton extends StatelessWidget {
  ListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AspectRatio(
      aspectRatio: 3.6,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              InputIconButton(
                  size: 18,
                  text: 'Thức Ăn ',
                  image:
                  "Images/MainScreenImages/food.png",
                  height: 60,
                  width: 60,
                  bgColor: decoration.inputButton),
              InputIconButton(
                  size: 18,
                  text: 'Giao Hàng',
                  image:
                  "Images/MainScreenImages/Delivery.png",
                  height: 60,
                  width: 60,
                  bgColor: decoration.inputButton),
              InputIconButton(
                  size: 18,
                  text: 'Xe Ôm',
                  image:
                  "Images/MainScreenImages/moto.png",
                  height: 60,
                  width: 60,
                  bgColor: decoration.inputButton),
              InputIconButton(
                  size: 18,
                  text: 'Mua hộ',
                  image:
                  "Images/MainScreenImages/money.png",
                  height: 60,
                  width: 60,
                  bgColor: decoration.inputButton),
              InputIconButton(
                  size: 18,
                  text: 'Khách Sạn',
                  image:
                  "Images/MainScreenImages/hotel.png",
                  height: 60,
                  width: 60,
                  bgColor: decoration.inputButton),
              InputIconButton(
                  size: 18,
                  text: 'Dịch Vụ',
                  image:
                  "Images/MainScreenImages/service.jpg",
                  height: 60,
                  width: 60,
                  bgColor: decoration.inputButton),
            ],
          )
        ],
      ),
    );
  }
}
