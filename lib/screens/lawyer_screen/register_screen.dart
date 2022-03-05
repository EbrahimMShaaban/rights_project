import 'package:flutter/material.dart';
import 'package:rights_project/screens/registration/login.dart';
import 'package:rights_project/widgets/compnant.dart';

import '../../style.dart';
import '../../widgets/login_button.dart';
import '../navigation.dart';

class RegisterLawyerScreen extends StatefulWidget {
  const RegisterLawyerScreen({Key? key}) : super(key: key);

  @override
  _RegisterLawyerScreenState createState() => _RegisterLawyerScreenState();
}

class _RegisterLawyerScreenState extends State<RegisterLawyerScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameControl = TextEditingController();
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwordControl = TextEditingController();
  final TextEditingController phoneControl = TextEditingController();
  final TextEditingController dataControl = TextEditingController();
  final TextEditingController idControl = TextEditingController();
  final TextEditingController licenseControl = TextEditingController();
  String email = '';
  String password = '';
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
              height: sizeFromHeight(context, 3.3),
              // color: redGradient,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(5),
                gradient: blurGradient,
              ),
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Create new Account',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            defualtTextButton(
                txt: 'Already Registered? Login', onPressed: () {
                  navigateTo(context,const Login());
            }),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  defualtTextFormField(
                      controller: nameControl,
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your name';
                        }
                        return null;
                      },
                      hint: 'Enter Your Name'),
                  const SizedBox(
                    height: 20,
                  ),
                  defualtTextFormField(
                      controller: emailControl,
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your Email';
                        }
                        return null;
                      },
                      hint: 'Enter Your Email'),
                  const SizedBox(
                    height: 20,
                  ),
                  defualtTextFormField(
                      controller: phoneControl,
                      type: TextInputType.phone,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your number';
                        }
                        return null;
                      },
                      hint: 'Enter Your Number'),
                  const SizedBox(
                    height: 20,
                  ),
                  defualtTextFormField(
                      controller: passwordControl,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your password';
                        }
                        return null;
                      },
                      hint: 'Enter Your password'),
                  const SizedBox(
                    height: 20,
                  ),

                  defualtTextFormField(
                      controller: dataControl,
                      type: TextInputType.datetime,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your data';
                        }
                        return null;
                      },
                      hint: 'Enter Your date'),
                  const SizedBox(
                    height: 20,
                  ),

                  defualtTextFormField(
                      controller: idControl,
                      type: TextInputType.number,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your Id Number';
                        }
                        return null;
                      },
                      hint: 'Enter Your Id Number'),
                  const SizedBox(
                    height: 20,
                  ),
                  defualtTextFormField(
                      controller: licenseControl,
                      type: TextInputType.number,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your Training license number';
                        }
                        return null;
                      },
                      hint: 'Enter Your Training license number'),
                  const SizedBox(
                    height: 20,
                  ),
                  Loginbuton(
                      txt: 'Sign Up ',
                      color: Colors.white,
                      ontab: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavigationScreen()));
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
