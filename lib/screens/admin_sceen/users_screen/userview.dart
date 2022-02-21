
import 'package:flutter/material.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/user_details.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/user_item.dart';

class Userview extends StatelessWidget {
  const Userview({Key? key,required this.itemname}) : super(key: key);
final String itemname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3f3b43),
        centerTitle: true,
        title: Text(itemname),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext, index) {
            return Useritem(
              ontab: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Userdetails()));
              },
              bookName: 'Lawyer',
            );
          }),
    );
  }
}
