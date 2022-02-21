import 'package:flutter/material.dart';
import 'package:rights_project/screens/chat/view.dart';
import 'package:rights_project/screens/home/view.dart';
import 'package:rights_project/screens/nontification/view.dart';
import 'package:rights_project/screens/profile/view.dart';



class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageindex = 0;
  List<Widget> pages = [


    const Homeview(),
    const Chatview(),
    const Notificationview(),
    const Profileview(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: BottomNavigationBar(
         unselectedItemColor: const Color(0xffd1aa5f),
          selectedItemColor: const Color(0xff818279),
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          currentIndex: pageindex,
          onTap: (value) {
            setState(() {
              pageindex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'notifications '),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
