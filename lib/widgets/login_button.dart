import 'package:flutter/material.dart';
import 'package:rights_project/style.dart';

class Loginbuton extends StatelessWidget {
  Loginbuton({Key? key, required this.txt,
    required this.ontab
  })
      : super(key: key);

  String txt;
  Function ontab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ontab();},
      child: Center(
        child: Container(
          height: sizeFromHeight(context, 10),
          width: sizeFromWidth(context, 1.1),
          //  color: Color(0xff3f3b43),
          decoration: BoxDecoration(
            color: Color(0xff3f3b43),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: Text(
            txt,
            style: TextStyle(color: Color(0xffd1aa5f), fontSize: 20),
          )),
        ),
      ),
    );
  }
}
