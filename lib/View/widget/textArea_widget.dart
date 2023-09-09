// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// text area with 200 CustomTextAreaBig
class CustomTextAreaBig extends StatelessWidget {
  final controller;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String> validator;
  final double? width;
  final double? height;
  final String hintText;
  final String helpText;
  final int maxCharCount;

  const CustomTextAreaBig({
    Key? key,
    required this.hintText,
    required this.helpText,
    required this.onSaved,
    required this.validator,
    required this.height,
    required this.controller,
    required this.width,
    required this.maxCharCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hintText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12),
          TextFormField(
            controller: controller,
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              // hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 106, // Đặt chiều cao ở đây
              ),
              helperText: helpText,
            ),
            maxLength: maxCharCount,
            maxLines: null, // Cho phép nhiều dòng văn bản
          ),
        ],
      ),
    );
  }
}

// text area with 200 CustomTextAreaMedium
class CustomTextAreaMedium extends StatelessWidget {
  final controller;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String> validator;
  final double? width;
  final double? height;
  final String hintText;
  final String helpText;
  final int maxCharCount;

  const CustomTextAreaMedium({
    Key? key,
    required this.hintText,
    required this.helpText,
    required this.onSaved,
    required this.validator,
    required this.height,
    required this.controller,
    required this.width,
    required this.maxCharCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hintText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12),
          TextFormField(
            controller: controller,
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              // hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 50, // Đặt chiều cao ở đây
              ),
              helperText: helpText,
            ),
            maxLength: maxCharCount,
            maxLines: null, // Cho phép nhiều dòng văn bản
          ),
        ],
      ),
    );
  }
}
