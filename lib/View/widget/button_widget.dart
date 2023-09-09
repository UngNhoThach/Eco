// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import '../../Constants/color.dart';

class ButtonWithText extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  const ButtonWithText({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ),
    );
  }
}

class ButtonTextWithIcon extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonTextWithIcon({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      width: 36,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

// button have no icon
class ButtonNoIcon extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final Color hoverColor;
  final Color focusColor;

  const ButtonNoIcon({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
    this.hoverColor = Colors.indigo,
    this.focusColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return hoverColor;
              }
              if (states.contains(MaterialState.focused)) {
                return focusColor;
              }
              return colors
                  .main_color; // Màu mặc định khi không hover hoặc focus
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

// button have  icon left
class ButtonIconLeft extends StatelessWidget {
  final double? width;
  final double? height;
  final IconData? icon;
  final String text;
  final VoidCallback onPressed;
  final Color hoverColor;
  final Color focusColor;

  const ButtonIconLeft({
    Key? key,
    required this.icon,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
    this.hoverColor = Colors.indigo,
    this.focusColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return hoverColor;
              }
              if (states.contains(MaterialState.focused)) {
                return focusColor;
              }
              return colors
                  .main_color; // Màu mặc định khi không hover hoặc focus
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

// button have  icon right
class ButtonIconRight extends StatelessWidget {
  final double? width;
  final double? height;
  final IconData? icon;
  final String text;
  final VoidCallback onPressed;
  final Color hoverColor;
  final Color focusColor;

  const ButtonIconRight({
    Key? key,
    required this.icon,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
    this.hoverColor = Colors.indigo,
    this.focusColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return hoverColor;
              }
              if (states.contains(MaterialState.focused)) {
                return focusColor;
              }
              return colors
                  .main_color; // Màu mặc định khi không hover hoặc focus
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản

            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

// button type border with text
class ButtonWithTextBorder extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final Color hoverColor;
  final Color focusColor;

  const ButtonWithTextBorder({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
    this.hoverColor = Colors.indigo,
    this.focusColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return hoverColor;
              }
              if (states.contains(MaterialState.focused)) {
                return focusColor;
              }
              return Colors.white;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              side: BorderSide(
                // Thêm border
                color: Colors.grey,
                width: 2.0, // Độ dày của border
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

// button type border with icon right
class ButtonIconRightBorder extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color hoverColor;
  final Color focusColor;

  const ButtonIconRightBorder({
    Key? key,
    required this.width,
    required this.icon,
    required this.height,
    required this.text,
    required this.onPressed,
    this.hoverColor = Colors.indigo,
    this.focusColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return hoverColor;
              }
              if (states.contains(MaterialState.focused)) {
                return focusColor;
              }
              return Colors.white;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              side: BorderSide(
                // Thêm border
                color: Colors.grey,
                width: 2.0, // Độ dày của border
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản
            Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

// button type border with icon left
class ButtonIconLeftBorder extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color hoverColor;
  final Color focusColor;

  const ButtonIconLeftBorder({
    Key? key,
    required this.width,
    required this.icon,
    required this.height,
    required this.text,
    required this.onPressed,
    this.hoverColor = Colors.indigo,
    this.focusColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return hoverColor;
              }
              if (states.contains(MaterialState.focused)) {
                return focusColor;
              }
              return Colors.white;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              side: BorderSide(
                // Thêm border
                color: Colors.grey,
                width: 2.0, // Độ dày của border
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(width: 10), // Khoảng cách giữa biểu tượng và văn bản
            Text(text,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
