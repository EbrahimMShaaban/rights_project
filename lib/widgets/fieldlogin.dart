import 'package:flutter/material.dart';

import '../style.dart';

class InputFieldRegist extends StatefulWidget {
  final String hint;
  final String label;
  final bool scure;
  final FormFieldValidator validator;
  // final Function onSaved;
  final Function (String)onChanged;
  const InputFieldRegist(
      {Key? key, required this.hint,
        required this.label,
        required this.scure,
        required this.validator,
        // required this.onSaved,
        required this.onChanged
      }) : super(key: key);

  @override
  _InputFieldRegistState createState() => _InputFieldRegistState();
}

class _InputFieldRegistState extends State<InputFieldRegist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
      child: TextFormField(
        onChanged: widget.onChanged ,
        obscureText: widget.scure,
        validator: widget.validator,
        // onSaved: widget.onSaved(),
        decoration: InputDecoration(
          enabledBorder:  UnderlineInputBorder(
            borderSide:  BorderSide(color: gold, width: 2.5),
          ),
          focusedBorder:  UnderlineInputBorder(
            borderSide: BorderSide(color: gold, width: 2.5),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.label,
          hintText: widget.hint,
          // labelStyle: labelStyle,
          // hintStyle: hintStyle,
        ),
      ),
    );
  }
}
