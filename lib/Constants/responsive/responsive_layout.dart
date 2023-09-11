// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget? tablet;

  responsiveLayout({required this.mobile, required this.desktop, this.tablet});

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    if (_size.width < 600) {
      return mobile;
    } else if (_size.width >= 600 && tablet != null) {
      return tablet!;
    } else {
      return desktop;
    }
  }
}
