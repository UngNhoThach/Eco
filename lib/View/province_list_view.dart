// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, unused_element, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:developer';

import 'package:eco/viewModel/province_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                                            fontSize: 16)),
                                  ),
                                ),
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
