import 'package:flutter/material.dart';
import 'package:nitrogen/responsive/desktop_body.dart';
import 'package:nitrogen/responsive/mobile_body.dart';
import 'package:nitrogen/responsive/responsive_layout.dart';

void main() {
  runApp(const NitrogenApp());
}

class NitrogenApp extends StatelessWidget {
  const NitrogenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Nitrogen', home: _home());
  }
}

Widget _home() {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Nitrogen'),
      ),
      body: ResponsiveLayout(
          mobileBody: MobileBody(), desktopBody: DesktopBody()));
}
