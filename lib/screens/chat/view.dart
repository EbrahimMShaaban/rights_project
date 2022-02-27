

import 'package:flutter/material.dart';
import 'package:rights_project/screens/chat/chatscreen.dart';

import '../../widgets/compnant.dart';

class Chatview extends StatefulWidget {
  const Chatview({Key? key}) : super(key: key);

  @override
  State<Chatview> createState() => _ChatviewState();
}

class _ChatviewState extends State<Chatview> {
  final items = ['Sort by time', 'Sort by name', 'Sort by data'];
  String defualtitem = 'Sort by time';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: const [
                    Image(
                      image: AssetImage('images/curve.png'),
                      height: 170,
                    ),
                    CircleAvatar(
                        backgroundColor: Color(0xffd1aa5f),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        )),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Messages & Chat',
                        style: TextStyle(fontSize: 22),
                      ),
                      Divider(
                        indent: 30,
                        height: 15,
                        thickness: 2,
                        endIndent: 25,
                        color: Color(0xffd1aa5f),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildDropdownButton(),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => buildItems(
                        circleAvatar: const CircleAvatar(
                          backgroundImage: AssetImage('images/person.png'),
                        ),
                        context: context,
                        txt: 'Khaled',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            CircleAvatar(
                                radius: 11,
                                backgroundColor: Color(0xffd1aa5f),
                                child: Text(
                                  '2',
                                  style: TextStyle(color: Colors.white),
                                )),
                            Text(
                              '5m ago',
                              style: TextStyle(color: Color(0xffd1aa5f)),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => const Chatscreen()));
                        },
                      ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(),
                  itemCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}
