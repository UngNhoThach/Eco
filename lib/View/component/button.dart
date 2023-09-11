// ignore_for_file: avoid_unnecessary_containers, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../main.dart';
import '../widget/button_widget.dart';
import '../../Constants/color.dart';

class buttonNoIcon extends StatefulWidget {
  const buttonNoIcon({super.key});

  @override
  State<buttonNoIcon> createState() => _buttonNoIconState();
}

class _buttonNoIconState extends State<buttonNoIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('button'.toUpperCase()),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // space
                    SizedBox(height: size.height / 30),
                    ButtonNoIcon(
                      circular: null,
                      mainColor: colors.main_color,
                      onPressed: () {},
                      text: 'Default button no icon',
                      width: null,
                      height: 56,
                      textColor: Colors.white,
                    ),
                    // space
                    SizedBox(height: size.height / 30),
                    ButtonIconLeft(
                      icon: Icons.person,
                      onPressed: () {},
                      text: 'Default button with icon left',
                      width: null,
                      height: 56,
                    ),

                    // space
                    SizedBox(height: size.height / 30),
                    ButtonIconRight(
                      icon: Icons.person,
                      onPressed: () {},
                      text: 'Default button with icon right',
                      width: null,
                      height: 56,
                    ),

                    // space
                    SizedBox(height: size.height / 30),
                    ButtonNoIcon(
                      onPressed: () {},
                      text: 'No icon small',
                      width: size.width / 2,
                      height: 56,
                      circular: null,
                      mainColor: colors.main_color,
                      textColor: Colors.white,
                    ),
                    // space
                    SizedBox(height: size.height / 30),
                    ButtonIconLeft(
                      icon: Icons.person,
                      onPressed: () {},
                      text: 'Icon small left',
                      width: size.width / 2,
                      height: 56,
                    ),

                    // space
                    SizedBox(height: size.height / 30),
                    ButtonIconRight(
                      icon: Icons.person,
                      onPressed: () {},
                      text: 'Icon small right',
                      width: size.width / 2,
                      height: 56,
                    ),

                    // space
                    SizedBox(height: size.height / 30),
                    ButtonWithTextBorder(
                      onPressed: () {},
                      width: null,
                      height: 56,
                      text: 'Default button no icon',
                    ),
                    // space
                    SizedBox(height: size.height / 30),
                    ButtonIconRightBorder(
                      onPressed: () {},
                      width: null,
                      icon: Icons.person,
                      height: 56,
                      text: 'Default button icon right',
                    ),

                    // space
                    SizedBox(height: size.height / 30),
                    ButtonIconLeftBorder(
                      onPressed: () {},
                      width: null,
                      icon: Icons.person,
                      height: 56,
                      text: 'Default button icon left',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
