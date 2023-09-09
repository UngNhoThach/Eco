// ignore_for_file: prefer_const_constructors, camel_case_types, unused_field

import 'dart:developer';

import 'package:eco/Model/province_model.dart';
import 'package:eco/View/ward_list_view.dart';
import 'package:eco/viewModel/province_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class district_list_view extends StatelessWidget {
  final ProvinceModel provinceModel;
  district_list_view({super.key, required this.provinceModel});

  // ProvinceController

  final ProvinceController _provinceController = Get.put(ProvinceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Districts'.toUpperCase())),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                'Nhập vị trí và khoảng cách tìm kiếm',
                                style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.navigate_next_rounded)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),

              Expanded(
                flex: 8,
                child: Obx(
                  () => _provinceController.isLoading.value
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: provinceModel.districts.length,
                          itemBuilder: (context, index) {
                            return AnimatedContainer(
                              duration: Duration(microseconds: 200),
                              child: Material(
                                color: Colors.white,
                                child: InkWell(
                                  onTap: () async {
                                    _provinceController.isClick.value =
                                        !_provinceController.isClick.value;
                                    log('bool is : ${_provinceController.isClick.value}');
                                    Get.to(
                                        ward_list_view(
                                            provinceModel: _provinceController
                                                .provinceList[index]
                                                .districts[index]),

                                        // animation
                                        duration: Duration(microseconds: 20000),
                                        transition: Transition
                                            .leftToRight //transition effect
                                        );
                                    log('Index is:  ${_provinceController.provinceList[index].districts[index]}');
                                  },
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: Text(
                                            provinceModel.districts[index].name,
                                            style: TextStyle(
                                                fontFamily: 'Times New Roman',
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons
                                                    .navigate_next_rounded)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                ),
              ),

              // bottom flitter
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey[100],
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 180,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Center(
                                    child: Text('Lọc theo khu vực ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            wordSpacing: 2,
                                            fontSize: 16)),
                                  ),
                                ),
                              ),
                              Text('Tỉnh Hà Nội',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
                                    wordSpacing: 2,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 380,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.amber[800],
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Áp dụng (1)'.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 20,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
