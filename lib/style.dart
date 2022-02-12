import 'package:flutter/material.dart';

//colors
Color brown =const Color(0xff3f3b43);
Color gold =const Color(0xffd1aa5f);
Color darkzet =const Color(0xff818279);
Color lightzet =const Color(0xffb2b2ad);


//sizes
double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar ? (screenHeight - AppBar().preferredSize.
  height -
      MediaQuery.of(context).padding.top)
      : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  return MediaQuery.of(context).size.width / fraction;
}
