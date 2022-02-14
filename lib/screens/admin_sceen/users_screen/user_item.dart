
import 'package:flutter/material.dart';
import 'package:rights_project/style.dart';

class Useritem extends StatefulWidget {
  final String bookName;
  final Function ontab;

  const Useritem({Key? key, required this.bookName, required this.ontab})
      : super(key: key);

  @override
  State<Useritem> createState() => _UseritemState();
}

class _UseritemState extends State<Useritem> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: () {
          widget.ontab();
        },
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xffe0e1df),
            // boxShadow: const [BoxShadow(color: white, blurRadius: 6)],
            border: Border.all(color: const Color(0xff3f3b43), width: 1.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.bookName,
                  maxLines: 2,

                ),
              ),
              Expanded(
                child: SizedBox(
                  width: sizeFromWidth(context, 2),
                ),
              ),
              InkWell(onTap: () {}, child: const Icon(Icons.star)),
              SizedBox(
                width: sizeFromWidth(context, 25),
              ),
              InkWell(onTap: () {}, child: const Icon(Icons.star)),
              SizedBox(
                width: sizeFromWidth(context, 25),
              ),
              InkWell(onTap: () {}, child: const Icon(Icons.delete))
            ],
          ),
        ),
      ),
    );
  }
}

