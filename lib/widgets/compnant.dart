import 'package:flutter/material.dart';

Padding defualtTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required FormFieldValidator validate,
  required String hint,
   int maxlines=1,
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

TextButton defualtTextButton({required String txt,required VoidCallback? onPressed}) {
  return TextButton(
      onPressed: onPressed,
      child:  Text(
        txt,
        style:const TextStyle(color: Color(0xffd1aa5f), fontSize: 15),
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
