// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:eco/contronllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  // variables
  bool isUpcase = false;

  // userInfo controller
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'count',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nthach'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    isUpcase = !isUpcase;
                    if (isUpcase) {
                      _controller.convertUpperCase();
                    } else {
                      _controller.convetIsLowerCase();
                    }
                  },
                  child: Obx(() =>
                      Text('Name is ${_controller.userInfo.value.username}'))),
            ],
          ),
        ),
      ),
    );
  }
}
