import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rights_project/screens/profile/editprofille.dart';
import 'package:rights_project/screens/registration/firstscreen.dart';
import 'package:rights_project/style.dart';
import 'package:rights_project/widgets/compnant.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                const Image(
                  image: AssetImage('images/curve.png'),
                  height: 170,
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(180 / 360),
                          child: IconButton(
                            onPressed: () {
                              navigateTo(context, const Firstscreen());
                            },
                            icon: const Icon(
                              Icons.logout,
                            ),
                            color: const Color(0xffd1aa5f),
                          )),
                    )),
              ],
            ),
            Center(
              child: Container(
                height: sizeFromHeight(context, 2),
                //color: Colors.amber,
                child: const Image(
                    image: AssetImage('images/logo.png'),
                    width: double.infinity,
                    fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Image(
                      image: const AssetImage('images/myrequest.png'),
                      width: sizeFromWidth(context, 1.1),
                      height: sizeFromHeight(context, 4),
                    ),
                  ),
                  const Center(
                      child: Text(
                    'My Request',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
