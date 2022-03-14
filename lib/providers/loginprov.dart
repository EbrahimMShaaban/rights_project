import 'package:flutter/material.dart';
import 'package:rights_project/screens/fresh_lawer/view.dart';
import 'package:rights_project/screens/navigation.dart';
import 'package:rights_project/widgets/compnant.dart';

import '../screens/profile/editprofille.dart';

class LoginProv with ChangeNotifier {
  late int count;

  checkKind(BuildContext context) {
    switch (count) {
      case 0:
        navigateAndFinish(context, const NavigationScreen());

        break;
      case 1:
        navigateAndFinish(context, const FreshView());
        break;

      case 2:
        navigateAndFinish(context, const NavigationScreen());
        break;
    }
  }

  checkIcon(BuildContext context){
    if(count==0||count==2){
      IconButton(
        onPressed: () {
          navigateTo(context, const Profileedit());
        },
        icon: const Icon(Icons.settings),
        color: const Color(0xffd1aa5f),
      );
    }else {
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
        color: const Color(0xffd1aa5f),
      );
    }
  }
}
