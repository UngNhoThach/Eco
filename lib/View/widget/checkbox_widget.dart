// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  const CustomCheckbox({
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            widget.onChanged(!widget.value);
          },
          child: Container(
            width: 20.0, // Độ rộng của Container
            height: 20.0, // Chiều cao của Container
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              shape: BoxShape
                  .rectangle, // Đặt hình dạng của đường viền (hình tròn)
              border: Border.all(
                width: 2.0, // Độ rộng của đường viền
                color: Colors.grey, // Màu của đường viền
              ),
            ),
            child: Center(
              child: widget.value
                  ? Icon(
                      Icons.check,
                      size: 16.0, // Kích thước biểu tượng check
                      color: Colors.blue, // Màu biểu tượng check khi được chọn
                    )
                  : null,
            ),
          ),
        ),
        SizedBox(width: 8), // Khoảng cách giữa Checkbox và label
        Text(widget.label),
      ],
    );
  }
}

class CustomCheckboxType2 extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  const CustomCheckboxType2({
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  _CustomCheckboxType2State createState() => _CustomCheckboxType2State();
}

class _CustomCheckboxType2State extends State<CustomCheckboxType2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.value,
          onChanged: widget.onChanged,
        ),
        Text(widget.label),
      ],
    );
  }
}
