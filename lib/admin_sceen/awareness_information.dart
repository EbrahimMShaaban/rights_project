import 'package:flutter/material.dart';

class AwarenessInfoScreen extends StatefulWidget {
  const AwarenessInfoScreen({Key? key}) : super(key: key);

  @override
  State<AwarenessInfoScreen> createState() => _AwarenessInfoScreenState();
}

class _AwarenessInfoScreenState extends State<AwarenessInfoScreen> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController infoEditControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(context),
      body: Column(
        children: [
          const SizedBox(
            height: 23,
          ),
          Row(
            children: [
              const Image(
                image: AssetImage('images/curve.png'),
                height: 180,
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
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'بصفتك محاميًا ، يمكن أن توفر لك واجباتك اليومية الكثير من التحفيز والتحديات العقلية ، على سبيل المثال ، قد تتضمن بعض مسؤولياتك فهم النظريات القانونية المعقدة وتحديد النتائج المحتملة لعملائك عندما يتعلق الأمر بالقضية ، للقيام بذلك ، تحتاج إلى حل المشكلات ، وتشكيل فرضية وإنشاء استراتيجية قانونية لإفادة عميلك في قاعة المحكمة.',
              textAlign: TextAlign.end,
            ),
          ),
        ],
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
                        onPressed: (){},
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
