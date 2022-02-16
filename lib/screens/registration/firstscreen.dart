
import 'package:flutter/material.dart';
import 'package:rights_project/screens/registration/login.dart';
import 'package:rights_project/style.dart';

import '../../widgets/login_button.dart';
import '../lawyer_screen/lawyer_category.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({Key? key}) : super(key: key);

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
          children: [
            SizedBox(height: sizeFromHeight(context, 10)),
            Center(
              child: Image(
                image: const AssetImage(
                  'images/logo.png',
                ),
                height: sizeFromHeight(context, 3),
              ),
            ),
            SizedBox(height: sizeFromHeight(context, 14)),
            Loginbuton(
              ontab: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              txt: 'Login',color: const Color(0xffd1aa5f),
            ),
            SizedBox(height: sizeFromHeight(context, 10)),
            Loginbuton(
              ontab: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LawyerCategory()));
              },
              txt: 'Sign Up',color: const Color(0xffd1aa5f)
            ),
          ],
        ),
      ),
    );
  }
}
