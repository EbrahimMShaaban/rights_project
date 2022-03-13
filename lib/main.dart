import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rights_project/providers/loginprov.dart';
import 'package:rights_project/screens/splashscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProv(),
          // child:const MyApp(),
        ),

      ],
      child: const MyApp(),

    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
