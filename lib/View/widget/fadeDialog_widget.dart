// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:eco/main.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';

class CustomFdeDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomFdeDialogState();
}

class CustomFdeDialogState extends State<CustomFdeDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    );

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // for hiding keboard
      onTap: () => FocusScope.of(context).unfocus(),
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Container(
              constraints: BoxConstraints(
                  minHeight: 100, maxHeight: 600, maxWidth: size.width / 1.2),
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Không đồng ý duyệt',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Anh/Chị vui lòng cho biết lý do không đồng ý duyệt',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText:
                                  'Nhập nội dung ở đây', // Đặt hintText ở đây
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.2,
                                    color: Color.fromRGBO(233, 232, 232, 1)),

                                borderRadius: BorderRadius.circular(
                                    5.0), // Điều chỉnh độ cong của border
                              ),
                              filled: true),
                          minLines: 6,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ButtonNoIcon(
                              circular: 5,
                              mainColor: Color.fromRGBO(237, 235, 233, 1),
                              onPressed: () {
                                // close this box
                                Navigator.of(context).pop();
                              },
                              text: 'Để sau',
                              width: size.width / 3,
                              height: 36,
                              textColor: Colors.black,
                            ),
                            ButtonNoIcon(
                              circular: 5,
                              mainColor: Color.fromRGBO(255, 143, 0, 1),
                              onPressed: () {},
                              text: 'Hoàn tất',
                              width: size.width / 3,
                              height: 36,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
