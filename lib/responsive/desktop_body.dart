import 'package:flutter/material.dart';
import 'package:nitrogen/widgets/editor.dart';
import 'package:nitrogen/widgets/explorer.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          child: const Explorer(),
          color: Colors.white,
          constraints: const BoxConstraints(minWidth: 240),
        ),
        const MouseRegion(
          cursor: SystemMouseCursors.resizeColumn,
          child: VerticalDivider(
            width: 8,
            thickness: 2,
          ),
        ),
        Expanded(
          child: Container(
            child: const Editor(),
            color: Colors.grey,
          ),
        )
      ],
    ));
  }
}
