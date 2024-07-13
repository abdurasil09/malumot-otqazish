
import 'package:flutter/material.dart';
import 'package:qq/Qr_code.dart';
import 'package:qq/asosiy_page.dart';
import 'package:qq/dd_page.dart';
import 'package:qq/home_page.dart';
import 'package:qq/wallet.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home_Page(),
    asosiy_page(),
    Qr_code(),
    dd_page(),
    wallet_page()
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save,color: Colors.black,),
            label: 'Save',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner,color: Colors.black,),
            label: 'qr code',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
            label: 'shop',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add_card_rounded,color: Colors.black,),
            label: 'hamyon',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
