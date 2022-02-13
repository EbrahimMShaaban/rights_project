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
  final TextEditingController nameControl = TextEditingController();
  final TextEditingController passwordControl = TextEditingController();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 35),
          const Image(
            image: AssetImage('images/logo.png'),
            width: 200,
            height: 200,
          ),
          const Center(
              child: Text(
            'Login',
            style: TextStyle(
              fontSize: 40,
            ),
          )),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            'sign in to continue',
          )),
          const SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Please Enter Your Email'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nameControl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Please Enter Your Email',
                        filled: true,
                        fillColor: const Color(0xffb2b2ad),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Please Enter Your password'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nameControl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Please Enter Your password',
                        filled: true,
                        fillColor: const Color(0xffb2b2ad),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          TextButton(onPressed: () {},
              child: const Text('Forget Password ?',style: TextStyle(color: Color(0xffd1aa5f)),))
        ],
      ),
    );
  }
}
