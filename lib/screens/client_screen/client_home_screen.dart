import 'package:flutter/material.dart';
import 'package:rights_project/screens/registration/firstscreen.dart';
import 'package:rights_project/style.dart';
import 'package:rights_project/widgets/compnant.dart';

class ClientHome extends StatefulWidget {
  const ClientHome({Key? key}) : super(key: key);

  @override
  _ClientHomeState createState() => _ClientHomeState();
}

class _ClientHomeState extends State<ClientHome> {
  final TextEditingController searchControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff3f3b43),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: sizeFromHeight(context, 5),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(child: Image(image: AssetImage('images/logo.png')),),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: IconButton(
                            onPressed: () {
                              navigateAndFinish(context, const Firstscreen());
                            },
                            icon: const Icon(Icons.logout),
                            color: const Color(0xffd1aa5f),
                            iconSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'What kind of legal advice would you like to request?',textAlign:TextAlign.center ,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 40,
                    width: 310,
                    child: TextFormField(
                      controller: searchControl,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Color(0xffd1aa5f),
                        ),
                        labelText: "Search here..",
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        //fillColor: Colors.green
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.list,
                  color: Color(0xffd1aa5f),
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 1/1.1,
                children: <Widget>[
                  buildGridItems(
                      image: const AssetImage('images/commercial.png'),
                      ontap: (){},
                      txt: 'commercial'),
                  buildGridItems(
                      image: const AssetImage('images/criminal.png'),
                      ontap: (){},
                      txt: 'criminal'),
                  buildGridItems(
                      image: const AssetImage('images/Execute.png'),
                      ontap: (){},
                      txt: 'Execute and stop Services'),
                  buildGridItems(
                      image: const AssetImage('images/rights.png'),
                      ontap: (){},
                      txt: 'rights'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildGridItems({required ImageProvider? image, required String? txt,GestureTapCallback? ontap}) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
              padding: const EdgeInsets.all(8), child: Image(image: image!),height: 140,),
        ),
        Expanded(
            child: Text(
          txt!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
