import 'package:flutter/material.dart';

class Editfield extends StatefulWidget {
  final String hint;
  final String label;
  final bool scure;
  final FormFieldValidator validator;

  // final Function onSaved;
  final Function(String) onChanged;

  const Editfield(
      {Key? key,
      required this.hint,
      required this.label,
      required this.scure,
      required this.validator,
      // required this.onSaved,
      required this.onChanged})
      : super(key: key);

  @override
  _EditfieldState createState() => _EditfieldState();
}

class _EditfieldState extends State<Editfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
      child: TextFormField(
        onChanged: widget.onChanged,
        obscureText: widget.scure,
        validator: widget.validator,
        maxLength: 10,
        maxLines: 10,

        // onSaved: widget.onSaved(),
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2.5),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 2.5),
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
