import 'package:flutter/material.dart';
class Userdetails extends StatelessWidget {
  const Userdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff3f3b43)
          ,centerTitle: true,
          title: Text('بيانات المحامي'),
        ),
    );
  }
}
