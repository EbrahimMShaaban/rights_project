import 'package:flutter/material.dart';
import 'package:rights_project/screens/fresh_lawer/search_screen.dart';
import 'package:rights_project/widgets/compnant.dart';

import '../../style.dart';
import '../nontification/view.dart';

class FreshView extends StatelessWidget {
  const FreshView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: const Color(0xff3f3b43),
        actions:  [
          IconButton(
              onPressed: () {
                navigateTo(context, const Notificationview());
              },
              icon:const Icon(Icons.notifications),),
        const  SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
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
              onTap: () {
                navigateTo(context, const SearchScreen());
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Image(
                      image: const AssetImage('images/searchicon.png'),
                      width: sizeFromWidth(context, 1.1),
                      height: sizeFromHeight(context, 4),
                    ),
                  ),
                  const Center(
                      child: Text(
                    'Search',
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
