// ignore_for_file: prefer_const_constructors, camel_case_types, unused_field

import 'package:eco/Model/province_model.dart';
import 'package:eco/viewModel/province_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class location extends StatelessWidget {
  final DistrictsModel provinceModel;
  location({super.key, required this.provinceModel});

  // ProvinceController

  final ProvinceController _provinceController = Get.put(ProvinceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Get location')),
        body: Obx(
          () => _provinceController.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: provinceModel.wards.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Text(
                                    provinceModel.wards[index].name,
                                    style: TextStyle(
                                        fontFamily: 'Times New Roman',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
                  }),
        ));
  }
}
