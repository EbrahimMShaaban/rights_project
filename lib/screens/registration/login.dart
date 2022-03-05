import 'package:flutter/material.dart';
import 'package:rights_project/screens/client_screen/navigationbar.dart';
import 'package:rights_project/style.dart';

import '../../widgets/compnant.dart';
import '../../widgets/login_button.dart';
import '../admin_sceen/category_view.dart';
import '../lawyer_screen/register_screen.dart';
import 'forgetpass.dart';

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
                    const SizedBox(
                      height: 15,
                    ),
                    defualtTextFormField(
                      controller: nameControl,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Email';
                        }
                        return null;
                      },
                      hint: 'Enter Your name',
                      type: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    defualtTextFormField(
                      controller: passwordControl,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      hint: 'Enter Your password',
                      type: TextInputType.emailAddress,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
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
        Column(

          children: [

            defualtTextButton( txt: 'Forget Password ',onPressed: (){
              navigateTo(context, const ForgetPassword());
            }),
            defualtTextButton( txt: 'sign up ',onPressed: (){
              navigateTo(context, const RegisterLawyerScreen());
            })          ],
        )

        ],
      ),
    ));
  }



}
