// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors
import 'package:flutter/material.dart';

class MyTextField_Update extends StatelessWidget {
  final FormFieldSetter<String>? onSaved;
  // final controller;
  final String? hintText;
  final String outText;

  final bool obscureText;
  final FormFieldValidator<String>? validator;
  const MyTextField_Update({
    super.key,
    required this.onSaved,
    required this.validator,
    // required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.outText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: outText,
      onSaved: onSaved,
      validator: validator,
      // controller: controller,
      obscureText: obscureText,

      decoration: InputDecoration(
        // hoverColor: Colors.indigo.shade200,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        helperText: 'help text here',
      ),
    );
  }
}
