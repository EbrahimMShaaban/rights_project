import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rights_project/style.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Image(
                image: AssetImage('images/curve.png'),
                height: 170,
              ),
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
            onTap: (){},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image(
                    image: AssetImage('images/myrequest.png'),
                    width: sizeFromWidth(context, 1.1),
                    height: sizeFromHeight(context, 4),
                  ),
                ),
                Center(
                    child: const Text(
                  'My Request',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
