
import 'package:flutter/material.dart';
import 'package:rights_project/style.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({Key? key}) : super(key: key);

  Widget Chatbottom() {
    return Container(
      height: 80,
      color: brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.add, color: gold, size: 40),
          Container(
            height: 55,
            width: 250,
            child: TextFormField(
              maxLines: 3,
              // controller: _controller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,

                hintText: 'Message...',
                // hintStyle: hintStyle,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                ),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: lighttext)),
              ),
              // onChanged: () {
              //
              // },
            ),
          ),
          Icon(Icons.camera_alt_outlined, color: gold, size: 40),
          Icon(Icons.keyboard_voice, color: gold, size: 40),
        ],
      ),
    );
  }

  Widget Chatbody() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/profile.png'),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'hi,i love youuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu',
                        maxLines: 3,
                        style: TextStyle(fontSize: 18),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Chatbottom()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brown,
        //todo : اظبط الصورة عاالبرنامج
        title: const Image(
            image: AssetImage('images/logo1.png'),
            height: 55,
            fit: BoxFit.contain),
        centerTitle: true,
        actions: const [
          Icon(Icons.call,size: 30),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.videocam,size: 30),
          ),
        ],
      ),
      body: Chatbody(),
    );
  }
}
