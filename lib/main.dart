import 'package:flutter/material.dart';

void main() {
  runApp(const NitrogenApp());
}

class NitrogenApp extends StatelessWidget {
  const NitrogenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nitrogen',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Nitrogen'),
            ),
            body: const Center(
              child: Text('Notes Nitrogen, journey begins'),
            )));
  }
}
