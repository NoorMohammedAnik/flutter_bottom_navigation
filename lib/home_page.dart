import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/contact_screen.dart';
import 'package:flutter_bottom_navigation/dashboard_screen.dart';
import 'package:flutter_bottom_navigation/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPageIndex = 0;



  void onItemTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Bottom Navigation',style: TextStyle(
            color: Colors.white
          ),),
          backgroundColor: Colors.green),
      body: Center(
        child: pages.elementAt(selectedPageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Dashboard',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Contact',
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          //type: BottomNavigationBarType.shifting,
          currentIndex: selectedPageIndex,
          selectedItemColor: Colors.blue,
          iconSize: 40,
          onTap: onItemTapped,
      ),
    );
  }


  List<Widget> pages = <Widget>[
    DashBoard(),
    ProfileScreen(),
    ContactScreen(),
  ];
}
