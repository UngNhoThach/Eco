// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_build_context_synchronously, await_only_futures, unused_label, camel_case_types

import 'package:flutter/material.dart';

import '../../main.dart';
import '../widget/button_widget.dart';
import '../widget/fadeDialog_widget.dart';

class fadeDialog extends StatelessWidget {
  const fadeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // for hiding keboard
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('ShareExit'.toUpperCase()),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // space
                  SizedBox(height: size.height / 30),
                  ButtonWithText(
                    height: size.height / 24,
                    width: 200,
                    buttonText: 'fadeDialog',
                    onPressed: () {
                      // callbakck function
                      // show dialog
                      showDialog(
                        context: context,
                        builder: (_) => CustomFdeDialog(),
                      );
                    },
                  ),
                  // space
                  SizedBox(height: size.height / 30),

                  ButtonWithText(
                    height: size.height / 24,
                    width: null,
                    buttonText: 'fadeDialog sure or not',
                    onPressed: () {
                      // callbakck function
                      // show dialog
                      showDialog(
                        context:
                            context, // Đối tượng BuildContext (thường được lấy từ hàm build của widget)
                        builder: (BuildContext context) {
                          return AlertDialog(
                            icon: Icon(
                              Icons.warning_amber_sharp,
                              size: 60,
                              color: Colors.amber[400],
                            ),
                            title: Text('Anh/Chị có chắc chắn'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  // call back fuction
                                  Navigator.of(context)
                                      .pop(); // // close this box
                                },
                                child: Text('Đồng ý'),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // close this box
                                  },
                                  child: Text('Để sau')),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
