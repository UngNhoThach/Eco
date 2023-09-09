// ignore_for_file: avoid_unnecessary_containers, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../main.dart';
import '../widget/textArea_widget.dart';

class textArea extends StatefulWidget {
  const textArea({super.key});

  @override
  State<textArea> createState() => _textAreaState();
}

class _textAreaState extends State<textArea> {
  String _inputValue = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('textarea'.toUpperCase()),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // space
                  SizedBox(height: size.height / 30),
                  CustomTextAreaMedium(
                    hintText: 'Input value',
                    helpText: 'help text here',
                    height: 200,
                    width: null,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Error: Invalid';
                      }
                      return null;
                    },
                    onSaved: (String? newValue) {},
                    controller: null,
                    maxCharCount: 100,
                  ),

                  // space
                  SizedBox(height: size.height / 30),

                  CustomTextAreaBig(
                    hintText: 'Input value',
                    helpText: 'help text here',
                    height: 300,
                    width: null,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Error: Invalid';
                      }
                      return null;
                    },
                    onSaved: (String? newValue) {},
                    controller: null,
                    maxCharCount: 200,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
