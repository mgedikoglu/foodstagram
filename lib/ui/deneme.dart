// import 'package:flutter/material.dart';
// import 'package:week_5/model/post.dart';
// import 'package:week_5/util/styles.dart';
// import 'package:week_5/util/colors.dart';


// class BottomBar extends StatefulWidget {
//   final Widget bodyWidget;
//   int selectedIndex;
//   BottomBar({required this.bodyWidget, required this.selectedIndex});
  
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false, // delete back button
//         title: RichText(
//           text: TextSpan(
//             text: "Foodstagram",
//             style: appBarLogoStyle,
//           ),
//         ),
//         backgroundColor: Color.fromARGB(255, 255, 255, 255),
//         centerTitle: true,
//         elevation: 0.0,
//       ),
//       body: b,
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle_outlined),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
