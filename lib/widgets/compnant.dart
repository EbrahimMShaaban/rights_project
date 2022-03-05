import 'package:flutter/material.dart';

import '../style.dart';

Padding defualtTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required FormFieldValidator validate,
  required String hint,
  int maxlines = 1,
}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: TextFormField(
      maxLines: maxlines,
      controller: controller,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xffe0e1df),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}

TextButton defualtTextButton(
    {required String txt, required VoidCallback? onPressed}) {
  return TextButton(
      onPressed: onPressed,
      child: Text(
        txt,
        style: const TextStyle(color: Color(0xffd1aa5f), fontSize: 15),
      ));
}

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

Column buildItems({
   Widget? circleAvatar,
      required BuildContext context,
     String? txt,
    Widget? child,
    GestureTapCallback? onTap,
    }) {
  return Column(
    children: [
      Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white70,
          // boxShadow: const [BoxShadow(color: white, blurRadius: 6)],
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Container(
                child: circleAvatar,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Text(txt!),
              ),
              Expanded(
                child: SizedBox(
                  width: sizeFromWidth(context, 2),
                ),
              ),
              InkWell(
                onTap: onTap,
                child: child,
              ),
              SizedBox(
                width: sizeFromWidth(context, 25),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
final items = ['Sort by time', 'Sort by name', 'Sort by data'];
String defualtitem = 'Sort by time';

DropdownButton<String> buildDropdownButton() {
  return DropdownButton(
    iconEnabledColor: const Color(0xffd1aa5f),
    items: items
        .map(
          (items) =>
          DropdownMenuItem(value: items, child: Text(items)),
    )
        .toList(),
    onChanged: (String? val) {
      setState(() {
        defualtitem = val!;
      });
    },
    value: defualtitem,
  );
}

void setState(Null Function() param0) {
}