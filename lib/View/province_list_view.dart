// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, unused_element, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:developer';

import 'package:eco/View/widget/button_widget.dart';
import 'package:eco/viewModel/province_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/color.dart';
import 'district_list_view.dart';

class province_list_view extends StatelessWidget {
  province_list_view({super.key});

  // ProvinceController
  final ProvinceController _provinceController = Get.put(ProvinceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Province Api'.toUpperCase()),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _provinceController.isSearch.value =
                    !_provinceController.isSearch.value;
                // if () {

                // }
              },
              icon: Icon(Icons.search),
            )
          ],
        ),
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
                          itemCount: _provinceController.provinceList.length,
                          itemBuilder: (context, index) {
                            return Obx(
                              () => AnimatedContainer(
                                duration: Duration(microseconds: 200),
                                child: Material(
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () async {
                                      _provinceController.isClick.value =
                                          !_provinceController.isClick.value;
                                      log('bool is : ${_provinceController.isClick.value}');
                                      Get.to(
                                          district_list_view(
                                              provinceModel: _provinceController
                                                  .provinceList[index]),
                                          // animation
                                          duration:
                                              Duration(microseconds: 20000),
                                          transition: Transition
                                              .leftToRight //transition effect
                                          );
                                      log('Index is: ${_provinceController.provinceList[index]}');
                                      log('Name :${_provinceController.provinceList[index].name} \n ID: ${_provinceController.provinceList[index].code}');
                                    },
                                    onHover: (isHovering) {
                                      _provinceController.isHovering.value =
                                          isHovering;
                                      log('hover is: $isHovering');
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
                                          Checkbox(
                                            value: false,
                                            onChanged: (value) {},
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: Text(
                                              _provinceController
                                                  .provinceList[index].name,
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
                              Text('Thành phố Hà Nội',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
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
                              mainColor: colors.main_color,
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
