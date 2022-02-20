import 'package:flutter/material.dart';

import '../../style.dart';
import '../../widgets/compnant.dart';
import 'login_screen.dart';

class LawyerCategory extends StatefulWidget {
  const LawyerCategory({Key? key}) : super(key: key);

  @override
  _LawyerCategoryState createState() => _LawyerCategoryState();
}

class _LawyerCategoryState extends State<LawyerCategory> {
  @override
  Widget build(BuildContext context) {
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
                  navigateAndFinish(context, LoginLawyerScreen());
                },
                child: const Image(
                  image: AssetImage('images/lawyer_image.png'),
                  width: 300,
                  height: 150,
                ),
              ),
             const SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: const Image(
                  image: AssetImage('images/fersh_lawyer.png'),
                  width: 300,
                  height: 150,
                ),
              ),
             const SizedBox(height: 20,),
              InkWell(
                onTap: (){},
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
