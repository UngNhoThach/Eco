// ignore_for_file: prefer_const_constructors, prefer_final_fields

// ignore: must_be_immutable
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../component/button.dart';
import '../component/checkbox.dart';
import '../component/dropdown.dart';
import '../component/radiobutton.dart';
import '../component/shownbottom.dart';
import '../component/textArea.dart';
import '../component/textFlied.dart';
import '../province_list_view.dart';
import '../widget/button_widget.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  // variables
  bool isUpcase = false;

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    // get size of the screen
    size = MediaQuery.of(context).size;

    return GetMaterialApp(
      // off debug banner
      debugShowCheckedModeBanner: false,
      title: 'Home screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              // space of the buttons
              SizedBox(height: size.height / 30),

              // button size medium of the text field
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'province',
                onPressed: () {
                  // callbakck function
                  Get.to(province_list_view(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),
              // space of the buttons
              SizedBox(height: size.height / 30),

              // button size medium of the text field
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'textFiled',
                onPressed: () {
                  // callbakck function
                  Get.to(textFiled(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),

              // space of the buttons
              SizedBox(height: size.height / 30),

              // button size medium of the text area
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'text Area',
                onPressed: () {
                  // callbakck function
                  Get.to(textArea(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),
              // space of the buttons
              SizedBox(height: size.height / 30),

              // button size medium of the button widget
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'Button ',
                onPressed: () {
                  // callbakck function
                  Get.to(buttonNoIcon(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),

              // space of the buttons
              SizedBox(height: size.height / 30),

              // button size medium of the Dropdown widget
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'Dropdown',
                onPressed: () {
                  // callbakck function
                  Get.to(dropdown(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),

              // space of the buttons
              SizedBox(height: size.height / 30),

              // button size medium of the showbottom widget
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'Showbottom',
                onPressed: () {
                  // callbakck function
                  Get.to(showbottom(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),

              // space of the buttons
              SizedBox(height: size.height / 30),
              // button size medium of the check box widget
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'check box',
                onPressed: () {
                  // callbakck function
                  Get.to(checkbox(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),

              // space of the buttons
              SizedBox(height: size.height / 30),
              // button size medium of the check box widget
              ButtonWithText(
                height: size.height / 24,
                width: 200,
                buttonText: 'radio button',
                onPressed: () {
                  // callbakck function
                  Get.to(radiobutton(),
                      // animation
                      duration: Duration(microseconds: 20000),
                      transition: Transition.leftToRight //transition effect
                      );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
