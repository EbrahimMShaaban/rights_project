import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      'My profile',
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
                    'Ebrahim',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text('@Ebrahim'),
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
              '''خالد طالب حقوق في جامعة الملك سعود المستوى التاسع
            5/4.5 المعدل'''
              ,style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
         const SizedBox(height: 20,),
         const Image(image: AssetImage('images/cv.png'),width: 150,height: 150,),

        ],
      ),
    );
  }
}
