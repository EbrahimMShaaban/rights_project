import 'package:flutter/material.dart';
import 'package:rights_project/screens/admin_sceen/awareness_information.dart';
import 'package:rights_project/screens/admin_sceen/map.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/userview.dart';


import 'package:rights_project/widgets/login_button.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Userview(itemname: 'إدارة المحامين',)
                  ));
                },
                txt: 'إدارة المحامين',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Userview(itemname: 'إدارة المستخدمين',)));
                },
                txt: 'إدارة المستخدمين',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MapScreen()));
                },
                txt: 'إدارة الأماكن',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AwarenessInfoScreen()));
                },
                txt: 'إدارة معلومات التوعية',
                color: const Color(0xffd1aa5f)),
          ],
        ),
      ),
    );
  }
}
