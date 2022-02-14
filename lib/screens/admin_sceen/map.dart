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
      appBar: AppBar(backgroundColor: const Color(0xffd1aa5f)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchControl,
                decoration: InputDecoration(
                  labelText: "Search",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(color: Color(0xffd1aa5f)),
                  ),
                  //fillColor: Colors.green
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/so.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Color(0xff3f3b43),
        ),
        backgroundColor: const Color(0xffd1aa5f),
      ),
    );
  }
}
