// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatefulWidget {
  final List<String> items;
  final String selectedItem;
  final ValueChanged<String?> onChanged;

  CustomDropdownMenu({
    required this.items,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  _CustomDropdownMenuState createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.selectedItem,
      onChanged: widget.onChanged,
      items: widget.items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Custom Dropdown Menu'),
      ),
      body: Center(
        child: CustomDropdownMenu(
          items: ['Option 1', 'Option 2', 'Option 3'],
          selectedItem: 'Option 1',
          onChanged: (String? newValue) {
            // Xử lý sự kiện khi mục được chọn thay đổi
            log('Selected: $newValue');
          },
        ),
      ),
    ),
  ));
}

class CustomDropdownButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String selectedValue;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  CustomDropdownButton({
    required this.width,
    required this.height,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // Tùy chỉnh border
        borderRadius: BorderRadius.circular(4.0), // Tùy chỉnh góc bo tròn
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: DropdownButton<String>(
          value: selectedValue,
          onChanged: onChanged,
          underline: SizedBox(), // Loại bỏ underline mặc định
          icon: Icon(Icons.arrow_drop_down), // Icon dropdown
          iconSize: 24.0,
          isExpanded: true,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
