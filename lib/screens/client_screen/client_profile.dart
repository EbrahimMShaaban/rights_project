import 'package:flutter/material.dart';
import 'package:rights_project/screens/profile/editprofille.dart';
import 'package:rights_project/style.dart';
import 'package:rights_project/widgets/compnant.dart';



class ClientProfile extends StatelessWidget {
  const ClientProfile({Key? key}) : super(key: key);

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
                            navigateTo(context, const Profileedit());
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
                    'Nourah',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text('@Nourah'),
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' الطلبات السابقة',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              //TOdo : TEST DIVIDER

              Divider(thickness: 2,color: brown),
              Column(
                children: const [
                  Text(
                    '1',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'الطلبات الحالية',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}
