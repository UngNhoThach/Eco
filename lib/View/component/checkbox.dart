// ignore_for_file: camel_case_types, avoid_unnecessary_containers, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';
import '../../viewModel/checkbox_controller.dart';
import '../widget/checkbox_widget.dart';

class checkbox extends StatelessWidget {
  checkbox({super.key});

// check box controller
  final checkboxController _checkboxController = Get.put(checkboxController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('check box'.toUpperCase()),
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
                    Obx(
                      () => CustomCheckbox(
                        label: 'check box type 1',
                        onChanged: (newValue) {
                          _checkboxController.isChecked.value = newValue!;
                        },
                        value: _checkboxController.isChecked.value,
                      ),
                    ),

                    // space
                    SizedBox(height: size.height / 30),

                    Obx(
                      () => CustomCheckboxType2(
                        label: 'check box type 2',
                        onChanged: (newValue) {
                          _checkboxController.isChecked.value = newValue!;
                        },
                        value: _checkboxController.isChecked.value,
                      ),
                    ),

                    // space
                    SizedBox(height: size.height / 30),

// check box disabled
                    CustomCheckboxType2(
                      label: 'check box disabled',
                      onChanged: (newValue) {},
                      value: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
