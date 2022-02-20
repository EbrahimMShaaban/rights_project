import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style.dart';

class Notificationview extends StatefulWidget {
  const Notificationview({Key? key}) : super(key: key);

  @override
  State<Notificationview> createState() => _NotificationviewState();
}

class _NotificationviewState extends State<Notificationview> {
  final items = ['Sort by time', 'Sort by name', 'Sort by data'];
  String defualtitem = 'Sort by time';

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      Icons.notifications,
                      color: Colors.white,
                    )),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'NOTIFICATIONS',
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
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DropdownButton(
                iconEnabledColor: const Color(0xffd1aa5f),
                items: items
                    .map(
                      (items) =>
                          DropdownMenuItem(value: items, child: Text(items)),
                    )
                    .toList(),
                onChanged: (String? val) {
                  setState(() {
                    defualtitem = val!;
                  });
                },
                value: defualtitem,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => buildNotItem(context),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(),
              itemCount: 10),
        ),
      ],
    );
  }

  Column buildNotItem(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white70,
            // boxShadow: const [BoxShadow(color: white, blurRadius: 6)],
          ),
          child: Row(
            children: [
              const Expanded(
                child: Text('مكتب فيصل للمحاماة يتيح فرصة للتدريب'),
              ),
              Expanded(
                child: SizedBox(
                  width: sizeFromWidth(context, 2),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                     CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffd1aa5f),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 20,
                        )),
                    Text('5m ago',style: TextStyle(color: Color(0xffd1aa5f)),),
                  ],
                ),
              ),
              SizedBox(
                width: sizeFromWidth(context, 25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
