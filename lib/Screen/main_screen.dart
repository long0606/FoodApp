import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/widget/List_IconButton.dart';
import 'package:foodapp/widget/button_widget.dart';
import 'package:foodapp/widget/food1.dart';
import 'package:foodapp/widget/page_dot.dart';

import '../Demo/demo_image.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() {
    return _MainScreenState();
  }
}

Decoration decoration = Decoration();

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int _onPage = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                // color: decoration.bgColor,
                gradient: LinearGradient(
                    stops: const [0.0, 0.65, 0.65, 1.0],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                    colors: [
                      decoration.bgColor,
                      decoration.bgColor,
                      Colors.white,
                      Colors.white,
                    ])),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              'Laco`s member location',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Expanded(child: Container()),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.chat,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade50),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 300,
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Tìm Kiếm',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
                  child: ListButton(),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverToBoxAdapter(
                    child: AspectRatio(
                      aspectRatio: 3,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          PageView.builder(
                              onPageChanged: (value) {
                                setState(() {
                                  _onPage = value;
                                });
                              },
                              itemCount: demo.length,
                              itemBuilder: (context, index) =>
                                  Image.asset(demo[index])),
                          Positioned(
                              bottom: 5,
                              child: Row(
                                children: List.generate(
                                    demo.length,
                                        (index) => Padding(
                                      padding:
                                      const EdgeInsets.all(2.0),
                                      child: PageDot(
                                          isActive:
                                          index == _onPage),
                                    )),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding:
                    const EdgeInsets.only( bottom: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          width: 3,
                          height: 20,
                          color: Colors.pink,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, right: 138),
                          child: const Text(
                            'Thức ăn 1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 45,
                            width: 150,
                            child: Button(
                                screen: '', text: 'Xem thêm', boxColor: true))
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Food1(),
                        Food1(),
                        Food1(),
                        Food1(),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding:
                    const EdgeInsets.only( bottom: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          width: 3,
                          height: 20,
                          color: Colors.pink,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, right: 138),
                          child: const Text(
                            'Thức ăn 2',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 45,
                            width: 150,
                            child: Button(
                                screen: '', text: 'Xem thêm', boxColor: true))
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Food1(),
                        Food1(),
                        Food1(),
                        Food1(),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding:
                    const EdgeInsets.only( bottom: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          width: 3,
                          height: 20,
                          color: Colors.pink,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, right: 138),
                          child: const Text(
                            'Thức ăn 3',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 45,
                            width: 150,
                            child: Button(
                                screen: '', text: 'Xem thêm', boxColor: true))
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Food1(),
                        Food1(),
                        Food1(),
                        Food1(),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding:
                    const EdgeInsets.only( bottom: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          width: 3,
                          height: 20,
                          color: Colors.pink,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, right: 138),
                          child: const Text(
                            'Giao hộ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AspectRatio(
                      aspectRatio: 1.8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("Images/food-delivery.jpg"),
                            fit: BoxFit.cover,
                          )
                        ),),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding:
                    const EdgeInsets.only( bottom: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          width: 3,
                          height: 20,
                          color: Colors.pink,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, right: 138),
                          child: const Text(
                            'Xe ôm',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AspectRatio(
                      aspectRatio: 1.8,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("Images/food-delivery.jpg"),
                              fit: BoxFit.cover,
                            )
                        ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: decoration.bgColor,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Đơn hàng',
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.favorite_border,
            ),
          ),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}

class Decoration {
  Color bgColor = Colors.pink.shade200;
  Color inputButton = Colors.pink.shade50;
}
