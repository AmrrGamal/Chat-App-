import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {this.hintText, this.onChanged, this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder:
            // whan text field not click and only display
            OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border:
            //  general border
            OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        //focusedBorder:
        // whan we write
      ),
    );
  }
}
