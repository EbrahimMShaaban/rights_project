import 'package:flutter/material.dart';
import 'package:rights_project/style.dart';
import 'package:rights_project/widgets/fieldlogin.dart';

import '../../widgets/login_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 35),

          const SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'Login',

          )),
          Center(
              child: Text(
                'sign in to continue',

              )),
          const SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  InputFieldRegist(
                    onChanged: (val) {
                      email = val;
                    },
                    hint: 'Please Enter Your Email',
                    label: 'Please Enter Your Email',
                    scure: false,
                    validator: (value) {
                      email = value;
                      if (value!.isEmpty) {
                        return 'enter your e-mail please ';
                      }

                    },
                  ),
                  InputFieldRegist(
                    onChanged: (val) {
                      password = val;
                    },
                    hint: 'Please Enter Your Password',
                    label: 'Please Enter Your Password',
                    scure: true,
                    validator: (value) {
                     password = value;
                      if (value!.isEmpty) {
                        return 'enter your password please ';
                      }
                    },
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Loginbuton(
                  txt: 'Login',
                  ontab: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => PasswordRecovery()));
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: sizeFromHeight(context, 20),
          ),


        ],
      ),
    );
  }
}
