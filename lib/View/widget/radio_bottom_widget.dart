// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  const CustomRadioButton({
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: Row(
        children: [
          Transform.scale(
            scale: 1.2, // Điều chỉnh kích thước của RadioButton
            child: Radio<bool>(
              value: widget.value,
              onChanged: (value) {
                widget.onChanged(value);
              },
              groupValue: true, // Thay đổi groupValue thành giá trị phù hợp
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onChanged(!widget.value);
            },
            child: Text(
              widget.label,
              style: TextStyle(
                color: _isFocused
                    ? Colors.blue
                    : Colors.black, // Màu sắc khi focus
              ),
            ),
          ),
        ],
      ),
    );
  }
}
