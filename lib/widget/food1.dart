import 'package:flutter/material.dart';

class Food1 extends StatelessWidget {
  const Food1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.pink),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Container(
            height: 160,
            width: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage( "Images/MainScreenImages/pizza.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.only(left: 5, top: 15),
            child: const Text(
              'Bánh pizza hải sản',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.start,),
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.only(left: 5,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star_border,
                  color: Colors.yellow.shade700,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow.shade700,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow.shade700,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow.shade700,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow.shade700,
                ),
              ],
            ),
          ),
          const Text('- - - - - - - - - - - -',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300
            ),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 5),
            child: Row(
              children: const [
                Icon(
                  Icons.delivery_dining,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5,),
                  child: Text('250.000đ'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 5),
                  child: Text('15-25 phút'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
