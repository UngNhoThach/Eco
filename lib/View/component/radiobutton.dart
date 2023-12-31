// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

import '../../main.dart';
import '../widget/radio_bottom_widget.dart';

class radiobutton extends StatelessWidget {
  const radiobutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('radiobutton'.toUpperCase()),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // space
                  SizedBox(height: size.height / 30),
                  CustomRadioButton(
                    label: 'Radio button',
                    onChanged: (bool? value) {},
                    value: true,
                  ),
                  // space
                  SizedBox(height: size.height / 30),
                ],
              ),
            ),
          ),
        ));
  }
}
