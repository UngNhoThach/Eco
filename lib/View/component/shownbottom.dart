// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers, camel_case_types, unused_element

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../../viewModel/province_controller.dart';
import '../district_list_view.dart';
import '../widget/button_widget.dart';

class showbottom extends StatelessWidget {
  showbottom({super.key});

  // ProvinceController
  final ProvinceController _provinceController = Get.put(ProvinceController());

  @override
  Widget build(BuildContext context) {
// showbottom item
    void _showBodalBottomSheet() {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        backgroundColor: Colors.grey[100],
        useRootNavigator: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
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
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
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
                  flex: 9,
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
                                                provinceModel:
                                                    _provinceController
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
                                                width: 1.0, color: Colors.grey),
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
                                                    fontFamily:
                                                        'Times New Roman',
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
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
                                ),
                              );
                            }),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    // variable

    String selectedValue = 'Option 1'; // Giá trị mặc định ban đầu

    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('showbottom'.toUpperCase()),
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
                    ButtonIconRight(
                      icon: Icons.shop_two,
                      onPressed: () {
                        _showBodalBottomSheet();
                      },
                      text: 'Show province information',
                      width: null,
                      height: 56,
                    ),
                    // space
                    SizedBox(height: size.height / 30),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
