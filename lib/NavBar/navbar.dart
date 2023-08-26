import 'package:flutter/material.dart';
import 'package:flutter_widget/NavBar/account_page.dart';
import 'package:flutter_widget/NavBar/home_page.dart';
import 'package:flutter_widget/NavBar/setting_page.dart';
import 'package:flutter_widget/NavBar/shop_page.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  //declare varrible
  int _selectIndex = 0;
  //function select navbar
  void _navbarSelected(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  //Pages
  final List<Widget> _pages = const [
    HomePage(),
    Settingpage(),
    AccountPage(),
    ShopPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Bottom NavigationBar'),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed, // have 4navbar must use this
        currentIndex: _selectIndex, //catch varrible
        onTap: _navbarSelected, //catch from function select index
        selectedItemColor: Colors.white, //when we select button
        unselectedItemColor: Colors.grey,
        //elevation: 90,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
