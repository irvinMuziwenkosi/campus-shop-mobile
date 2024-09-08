import 'package:campus_shop/pages/books.dart';
import 'package:campus_shop/pages/food_and_snacks.dart';
import 'package:campus_shop/pages/more.dart';
import 'package:campus_shop/pages/profile.dart';
import 'package:campus_shop/widgets/campus.dart';
import 'package:campus_shop/widgets/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final _pages = [
    const Books(),
    const FoodAndSnacks(),
    const More(),
    const Profile()
  ];
  int _pageIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _pageIndex != 3
          ? AppBar(
              elevation: 0,
              toolbarHeight: kToolbarHeight + 70,
              backgroundColor: Colors.green,
              centerTitle: true,
              title: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Campus(),
                  ),
                  Search()
                ],
              ),
            )
          : AppBar(
              title: const Text("Profile"),
            ),
      body: IndexedStack(
        index: _pageIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Books",
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Foods",
            icon: Icon(Icons.emoji_food_beverage_outlined),
            activeIcon: Icon(Icons.emoji_food_beverage),
          ),
          BottomNavigationBarItem(
            label: "More",
            icon: Icon(Icons.devices_other_outlined),
            activeIcon: Icon(Icons.devices_other),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
          )
        ],
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
