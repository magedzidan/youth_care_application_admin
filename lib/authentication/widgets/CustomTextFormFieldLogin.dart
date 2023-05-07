import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class custom_textformfield extends StatelessWidget {
  custom_textformfield(
      {this.hintText,
      this.controller,
      this.icon,
      this.labelText,
      required this.isPasswordtype,
      this.validator,
      this.onSave});

  TextEditingController? controller;
  IconData? icon;
  String? hintText;
  String? labelText;
  bool isPasswordtype = false;
  final validator;
  final onSave;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
        ),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.red.withOpacity(0.8),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.blue,
              )),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black.withOpacity(0.7),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.3),
          prefixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(0.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
          ),
        ),
        controller: controller,
        validator: validator,
        onSaved: onSave,
        obscureText: isPasswordtype,
        autocorrect: isPasswordtype,
        cursorColor: Colors.white,
        keyboardType: isPasswordtype
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
      ),
    );
  }
}
