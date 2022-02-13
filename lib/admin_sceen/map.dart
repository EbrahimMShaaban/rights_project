import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController searchControl = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         const SizedBox(height: 35,),
          TextFormField(
            controller: searchControl,
            decoration:  InputDecoration(
              labelText: "Search",
              fillColor: Colors.white,
              border:  OutlineInputBorder(
                borderRadius:  BorderRadius.circular(25.0),
                borderSide: const BorderSide(),
              ),
              //fillColor: Colors.green
            ),
          ),
         const Image(image: AssetImage('images/so.jpg'),fit: BoxFit.cover,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:const Icon(Icons.add,color: Color(0xff3f3b43),),
        backgroundColor: const Color(0xffd1aa5f),
      ),
    );
  }
}
