// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/textfild_widget.dart';

class textFiled extends StatefulWidget {
  const textFiled({super.key});

  @override
  State<textFiled> createState() => _textFiledState();
}

class _textFiledState extends State<textFiled> {
  //variables
  bool isHovered = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();
  String _inputValue = '';
  int _charCount = 0;
  final int maxCharCount = 20;

  void initState() {
    super.initState();
    _textEditingController.addListener(_updateCharCount);
  }

  void _updateCharCount() {
    setState(() {
      _charCount = _textEditingController.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // for hiding keboard
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        appBar: AppBar(
          title: Text('Textfiled'.toUpperCase()),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Is Focused Icon Trailing
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Is Focused Icon Trailing',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          // hoverColor: Colors.indigo.shade200,
                          hintText: 'Input value',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          helperText: 'help text here',
                        ),
                        maxLength: maxCharCount,
                      )
                    ],
                  ),
                ),

                // Is Focused Icon Ledding
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Is Focused Icon Ledding',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          // hoverColor: Colors.indigo.shade200,
                          hintText: 'Input value',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                        maxLength: maxCharCount,
                      )
                    ],
                  ),
                ),

                // Is Focused No Icon
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Is Focused No Icon',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          // hoverColor: Colors.indigo.shade200,
                          hintText: 'Input value',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                        maxLength: maxCharCount,
                      ),
                    ],
                  ),
                ),

// Error without icon
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: <Widget>[
                        Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Error without icon',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            hintText: 'Input value',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Error: Invalid';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _inputValue = value!;
                          },
                          maxLength: maxCharCount,
                        ),

                        SizedBox(height: 16.0),

                        //           Error with icon ledding
                        Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Error with icon ledding',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            hintText: 'Input value',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Error: Invalid';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _inputValue = value!;
                          },
                          maxLength: maxCharCount,
                        ),

                        SizedBox(height: 16.0),

                        //           Error with icon trailling
                        Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'Error with icon trailling',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            hintText: 'Input value',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Error: Invalid';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _inputValue = value!;
                          },
                          maxLength: maxCharCount,
                        ),
                        SizedBox(height: 16.0),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     if (_formKey.currentState!.validate()) {
                        //       _formKey.currentState!.save();
                        //       ScaffoldMessenger.of(context).showSnackBar(
                        //         SnackBar(
                        //           content:
                        //               Text('Dữ liệu đã được gửi: $_inputValue'),
                        //         ),
                        //       );
                        //     }
                        //   },
                        //   child: Text('Gửi'),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
