import 'package:flutter/material.dart';
import 'package:rights_project/style.dart';
import 'package:rights_project/widgets/compnant.dart';

class Profileedit extends StatelessWidget {
  const Profileedit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameControl = TextEditingController();
    final TextEditingController usernameControl = TextEditingController();
    final TextEditingController infoControl = TextEditingController();
    final TextEditingController LawyercostControl = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3f3b43),
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Stack(
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  defualtTextFormField(
                    validate: (value) {},
                    controller: nameControl,
                    hint: 'Enter your name',
                    type: TextInputType.text,
                  ),
                  defualtTextFormField(
                    validate: (value) {},
                    controller: usernameControl,
                    hint: 'Enter your username',
                    type: TextInputType.emailAddress,
                  ),
                  defualtTextFormField(
                    validate: (value) {},
                    controller: infoControl,
                    hint: 'Write about yourself..',
                    maxlines: 5,
                    type: TextInputType.text,
                  ),
                  defualtTextFormField(
                    validate: (value) {},
                    controller: LawyercostControl,
                    hint: 'Enter your fees',
                    maxlines: 1,
                    type: TextInputType.text,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: sizeFromHeight(context, 10),
                  width: 20,
                  //  color: Color(0xff3f3b43),
                  decoration: BoxDecoration(
                    color: const Color(0xffd1aa5f),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                      child: Text(
                    'save',
                    style: TextStyle(color: Color(0xff3f3b43), fontSize: 30),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
