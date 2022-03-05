import 'package:flutter/material.dart';
import 'package:rights_project/screens/registration/login.dart';

import '../../style.dart';
import '../../widgets/compnant.dart';
import '../../widgets/login_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailControl = TextEditingController();
  LinearGradient blurGradient =
  const LinearGradient(begin: Alignment.topRight, end: Alignment.topLeft,
      //stops: [.100, .9],
      colors: [Color(0xff818279), Color(0xffb2b2ad)]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
           const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Forgot Password',style: TextStyle(fontSize: 30),),
                   const  SizedBox(height: 40,),
                   const Text('New Password',style: TextStyle(fontSize: 18),),
                    const SizedBox(height: 50,),
                    defualtTextFormField(
                        controller: emailControl,
                        type: TextInputType.emailAddress,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Email';
                          }
                          return null;
                        },
                        hint: 'PLEASE ENTER YOUR EMAIL'),
                    const SizedBox(height: 40,),
                    Loginbuton(txt: 'send', color: Colors.white, ontab:(){
                      navigateTo(context, const Login());
                    })


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
