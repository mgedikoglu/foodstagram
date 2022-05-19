import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/routes/search.dart';
import 'package:foodstagram/routes/feed.dart';

class BottomBar extends StatelessWidget {
  final int active;
  final Widget body;
  BottomBar({required this.body, required this.active});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Search()));
      } else if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Feed()));
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // delete back button
        title: RichText(
          text: TextSpan(
            text: "Foodstagram",
            style: appBarLogoStyle,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: this.body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: active,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
