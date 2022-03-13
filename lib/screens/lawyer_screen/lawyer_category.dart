import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rights_project/screens/lawyer_screen/register_screen.dart';

import '../../providers/loginprov.dart';
import '../../style.dart';
import '../../widgets/compnant.dart';
import '../client_screen/client_register.dart';
import '../fresh_lawer/view.dart';

class LawyerCategory extends StatefulWidget {
  const LawyerCategory({Key? key}) : super(key: key);

  @override
  _LawyerCategoryState createState() => _LawyerCategoryState();
}

class _LawyerCategoryState extends State<LawyerCategory> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LoginProv>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
             const SizedBox(height: 5,),
              Image(
                image: const AssetImage(
                  'images/logo.png',
                ),
                height: sizeFromHeight(context, 3),
              ),
               InkWell(
                onTap: (){
                  provider.count=0;
                  navigateAndFinish(context, const RegisterLawyerScreen());
                },
                child: const Image(
                  image: AssetImage('images/lawyer_image.png'),
                  width: 300,
                  height: 150,
                ),
              ),
             const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  provider.count=1;
                  navigateTo(context, const RegisterLawyerScreen());
                },
                child: const Image(
                  image: AssetImage('images/fersh_lawyer.png'),
                  width: 300,
                  height: 150,
                ),
              ),
             const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  provider.count=2;
                  navigateTo(context, const RegisterLawyerScreen());
                },
                child: const Image(
                  image: AssetImage('images/clint_image.png'),
                  width: 300,
                  height: 150,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
