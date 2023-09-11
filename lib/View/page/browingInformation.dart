// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../main.dart';

class browingInformation extends StatefulWidget {
  const browingInformation({super.key});

  @override
  State<browingInformation> createState() => _browingInformationState();
}

class _browingInformationState extends State<browingInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin phiếu đề xuất nghĩ phép'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1, color: Color.fromRGBO(224, 224, 224, 1))),
                ), //
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1. thông tin chung'.toUpperCase()),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
              Form(
                  child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Mã nhân viên:'),
                        Text('Họ và tên'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Bộ phận:'),
                        Text('Phòng quản trị nguồn nhân lực'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Vị trí công tác:'),
                        Text('Chuyên viên cao cấp nhân sự tổng hợp'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Quản lí trực tiếp:'),
                        Text('Trần Thị Ngân'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Ngày đề xuất:'),
                        Text('05/05/2023 09:59'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Tổng ngày phép:'),
                        Text('0'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Số phép đã nghĩ:'),
                        Text('0'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Phép bảo lưu còn lại:'),
                        Text('0'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Phép thâm niên còn lại:'),
                        Text('0'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Loại đăng ký:'),
                        Text('Nhiều giai đoạn'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Trạng thái đề xuất:'),
                        InkWell(
                          onTap: () {
                            log('clicked');
                          },
                          child: Container(
                            width: size.width / 5,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.green[400],
                                border: Border.all(
                                  color: Color.fromRGBO(102, 187, 106, 1),
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20))),
                            child: Text("Duyệt"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide()),
                    // ), //
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('2. Đăng ký nghĩ phép'.toUpperCase()),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide()),
                    // ), //
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('3. thông tin duyệt phép'.toUpperCase()),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                        Form(
                          child: Container(
                            decoration: const BoxDecoration(
                                // border: DashedBorder.fromBorderSide(
                                //     dashLength: 15,
                                //     side: BorderSide(
                                //         color: Colors.black, width: 2)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Người đề xuất'),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
