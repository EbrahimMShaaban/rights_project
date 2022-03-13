import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rights_project/screens/chat/view.dart';
import 'package:rights_project/screens/client_screen/client_home_screen.dart';
import 'package:rights_project/screens/client_screen/client_profile.dart';
import 'package:rights_project/screens/home/view.dart';
import 'package:rights_project/screens/nontification/view.dart';
import 'package:rights_project/screens/profile/view.dart';

import '../providers/loginprov.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageindex = 0;

  List<Widget> pages = [
    const ClientHome(),
    const Chatview(),
    const Notificationview(),
    const ClientProfile(),
  ];
  List<Widget> pages1 = [
    const Homeview(),
    const Chatview(),
    const Notificationview(),
    const Profileview(),
  ];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<LoginProv>(context);
    return Scaffold(
      body: prov.count == 0 ? pages1[pageindex] : pages[pageindex],
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
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'notifications '),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
