// ignore_for_file: prefer_const_constructors, camel_case_types, unused_field

import 'dart:developer';

import 'package:eco/Model/province_model.dart';
import 'package:eco/View/ward_list_view.dart';
import 'package:eco/View/widget/button_widget.dart';
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
                                    icon: Icon(
                                      Icons.navigate_next_rounded,
                                      color: Color.fromARGB(255, 193, 193, 193),
                                      weight:
                                          0.9, // Màu xám hoặc màu khác có độ mờ
                                    )),
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
                                            width: 0.5, color: Colors.grey),
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
                                                icon: Icon(
                                                  Icons.navigate_next_rounded,
                                                  color: Color.fromARGB(
                                                      255, 193, 193, 193),
                                                  weight:
                                                      0.9, // Màu xám hoặc màu khác có độ mờ
                                                )),
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
                              ButtonNoIcon(
                                circular: 5,
                                mainColor: Color.fromARGB(255, 224, 224, 224),
                                onPressed: () {},
                                text: 'Lọc theo khu vực',
                                width: 180,
                                height: 36,
                                textColor: Colors.black,
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
                            ButtonNoIcon(
                              circular: 5,
                              mainColor: Color.fromRGBO(255, 143, 0, 1),
                              onPressed: () {},
                              text: 'Áp dụng (1)'.toUpperCase(),
                              width: 380,
                              height: 56,
                              textColor: Colors.white,
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
