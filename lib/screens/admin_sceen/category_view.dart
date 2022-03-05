import 'package:flutter/material.dart';
import 'package:rights_project/screens/admin_sceen/awareness_information.dart';
import 'package:rights_project/screens/admin_sceen/map.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/userview.dart';
import 'package:rights_project/screens/registration/login.dart';
import 'package:rights_project/widgets/compnant.dart';


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
                      builder: (context) => const Userview(itemname: 'Lawyer management',)
                  ));
                },
                txt: 'Lawyer management',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Userview(itemname: 'User management',)));
                },
                txt: 'User management',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MapScreen()));
                },
                txt: 'Place management',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AwarenessInfoScreen()));
                },
                txt: 'Awareness Information Department',
                color: const Color(0xffd1aa5f)),
            Loginbuton(
                ontab: () {
                  navigateAndFinish(context, const Login());
                },
                txt: 'Log out',
                color: const Color(0xffd1aa5f)),
          ],
        ),
      ),
    );
  }
}
