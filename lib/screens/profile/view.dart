import 'package:flutter/material.dart';
import 'package:rights_project/screens/profile/reviewitem.dart';

class Profileview extends StatelessWidget {
  const Profileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.settings_sharp),
                          color: const Color(0xffd1aa5f),
                        )),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'Lawyer Info',
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
                    'اتعاب المحاماة',
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
                    'عدد الاستشارات',
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