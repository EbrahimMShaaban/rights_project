import 'package:flutter/material.dart';

class AwarenessInfoScreen extends StatefulWidget {
  const AwarenessInfoScreen({Key? key}) : super(key: key);

  @override
  State<AwarenessInfoScreen> createState() => _AwarenessInfoScreenState();
}

class _AwarenessInfoScreenState extends State<AwarenessInfoScreen> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController infoEditControl  = TextEditingController();

  String? infoText = '' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff3f3b43),elevation: 0),
      floatingActionButton: buildFloatingActionButton(context),
      body: Form(
        key: formKey,
        child: Column(
          children: [

            Row(
              children: [
                const Image(
                  image: AssetImage('images/curve.png'),
                  height: 140,
                ),
                Column(
                  children: const [
                    Text(
                      'معلومات التوعية',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 1,
                      endIndent: 2,
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding:const EdgeInsets.all(10.0),
              child: Text(
                '$infoText',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 400,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   const SizedBox(height: 5,),
                    const Text('Enter Your Text here',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                   const SizedBox(height: 5,),
                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Some Text';
                        }
                        return null;
                      },
                      controller:infoEditControl ,
                      maxLines: 14,
                      decoration:const  InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      width: 70,
                      height: 50.0,
                      child: MaterialButton(
                        onPressed: (){
                          if(formKey.currentState!.validate()){
                            setState(() {
                              infoText = infoEditControl.text;
                            });
                          }

                        },
                        child:const Text(
                          'Save',
                          style: TextStyle(
                            color: Color(0xff3f3b43),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: const Color(0xffd1aa5f),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.edit,
        color: Color(0xff3f3b43),
      ),
      backgroundColor: const Color(0xffd1aa5f),
    );
  }
}
