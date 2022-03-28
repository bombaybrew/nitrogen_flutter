import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ResponsiveLayout extends StatelessWidget {
  static const mobileMaxWidth = 600;

  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      developer.log('layout builder', name: 'app.responsive_layout');
      if (constraints.maxWidth < mobileMaxWidth) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}
