
import 'package:flutter/material.dart';
import 'package:rights_project/screens/registration/login.dart';
import 'package:rights_project/style.dart';

import '../../widgets/login_button.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
              txt: 'Login',
            ),
            SizedBox(height: sizeFromHeight(context, 10)),
            Loginbuton(
              ontab: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Firstscreen()));
              },
              txt: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
