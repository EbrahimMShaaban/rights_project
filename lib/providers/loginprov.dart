import 'package:flutter/material.dart';
import 'package:rights_project/screens/fresh_lawer/view.dart';
import 'package:rights_project/screens/navigation.dart';
import 'package:rights_project/widgets/compnant.dart';

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
}
