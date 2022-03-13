
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rights_project/screens/profile/editprofille.dart';
import 'package:rights_project/screens/profile/reviewitem.dart';
import 'package:rights_project/widgets/compnant.dart';

import '../../providers/loginprov.dart';

class Profileview extends StatelessWidget {
  const Profileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<LoginProv>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  const Image(
                    image: AssetImage('images/curve.png'),
                    height: 170,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        //TODO : edit condition
                        child: prov.count ==[0,1]?IconButton(
                          onPressed: () {
                            navigateTo(context, const Profileedit());
                          },
                          icon: const Icon(Icons.settings),
                          color: const Color(0xffd1aa5f),
                        ): IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          color: const Color(0xffd1aa5f),
                        ) ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'My Profile ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      endIndent: 25,
                      indent: 40,
                      color: Color(0xffd1aa5f),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    'Mohamed',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text('@Mohamed'),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        'images/profile.png',
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xffd1aa5f),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'محمد للمرافعات الشرعية والقانونية مختص بالمحاكم',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.star,
                color: Color(0xffd1aa5f),
              ),
              Icon(
                Icons.star,
                color: Color(0xffd1aa5f),
              ),
              Icon(
                Icons.star,
                color: Color(0xffd1aa5f),
              ),
              Icon(
                Icons.star,
                color: Color(0xffd1aa5f),
              ),
              Icon(
                Icons.star,
                color: Color(0xffd1aa5f),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    '200',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'lawyer\'s charge',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '50',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'number of consultations',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Reviews (0)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            thickness: 2,
            indent: 10,
            endIndent: 290,
            color: Color(0xffd1aa5f),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ReviewItem();
                }),
          )
        ],
      ),
    );
  }
}
