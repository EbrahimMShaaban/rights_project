import 'package:flutter/material.dart';
import 'package:rights_project/screens/admin_sceen/category_view.dart';
import 'package:rights_project/style.dart';

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
  LinearGradient blurGradient =
      const LinearGradient(begin: Alignment.topRight, end: Alignment.topLeft,
          //stops: [.100, .9],
          colors: [Color(0xff818279), Color(0xffb2b2ad)]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          Container(
            child: const Image(
              image: AssetImage('images/logo.png'),
              width: 200,
              height: 200,
            ),
            height: sizeFromHeight(context, 3.5),
            // color: redGradient,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(5),
              gradient: blurGradient,
            ),
            width: double.infinity,
          ),
          const SizedBox(height: 35),
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
                        fillColor: const Color(0xffe0e1df),
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
                      controller: passwordControl,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Please Enter Your password',
                        filled: true,
                        fillColor: const Color(0xffe0e1df),
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryView()));
                    },
                    color: Colors.white)
              ],
            ),
          ),
          SizedBox(
            height: sizeFromHeight(context, 20),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Forget Password ?',
                style: TextStyle(color: Color(0xffd1aa5f), fontSize: 15),
              ))
        ],
      ),
    ));
  }
}
