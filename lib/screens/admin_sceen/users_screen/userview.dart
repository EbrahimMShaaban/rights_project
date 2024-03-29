
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/user_details.dart';
import 'package:rights_project/screens/admin_sceen/users_screen/user_item.dart';

import '../../../providers/loginprov.dart';
import '../../profile/view.dart';

class Userview extends StatelessWidget {
  const Userview({Key? key,required this.itemname}) : super(key: key);
final String itemname;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LoginProv>(context);
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
                provider.count==3;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profileview()));
              },
              bookName: 'Lawyer',
            );
          }),
    );
  }
}
