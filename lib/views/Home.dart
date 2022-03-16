import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/views/Delivery.dart';
import 'package:artisanswalis/views/Products.dart';
import 'package:artisanswalis/views/Profile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'OrdersList.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const colorNavigationBar = Colors.brown;

  static const List<Widget> _widgetOptions = <Widget>[
    OrderList(),
    Delivery(),
    Products(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Stack(children :  [
          _widgetOptions.elementAt(_selectedIndex),
          //Bottom navigation Bar
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              decoration: decorationBoxBottomNav(context),
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.home_1),
                      label: 'Home',
                      backgroundColor: Colors.transparent
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.box),
                      label: 'Delivery',
                      backgroundColor: Colors.transparent
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.bag_2),
                      label: 'Products',
                      backgroundColor: Colors.transparent
                  ),

                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.profile_circle),
                      label: 'Profile',
                      backgroundColor: Colors.transparent

                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: oceanBlue700Color,
                unselectedItemColor: Theme.of(context).cardColor,
                iconSize: 30,
                elevation: 0,
                onTap: _onItemTapped,
              ),
            ),
          )
        ]),
      ),




    );
  }
}
