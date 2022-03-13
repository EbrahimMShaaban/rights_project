import 'package:flutter/material.dart';
import 'package:rights_project/screens/chat/view.dart';
import 'package:rights_project/screens/client_screen/client_home_screen.dart';
import 'package:rights_project/screens/client_screen/client_profile.dart';
import 'package:rights_project/screens/nontification/view.dart';

class ClientNavigate extends StatefulWidget {
  const ClientNavigate({Key? key}) : super(key: key);

  @override
  _ClientNavigateState createState() => _ClientNavigateState();
}

class _ClientNavigateState extends State<ClientNavigate> {
  int pageindex = 0;
  List<Widget> pages = [
    const ClientHome(),
    const Chatview(),
    const Notificationview(),
    const ClientProfile(),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'notifications '),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
