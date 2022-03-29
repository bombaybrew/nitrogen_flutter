import 'package:flutter/material.dart';
import 'package:nitrogen/widgets/editor.dart';
import 'package:nitrogen/widgets/explorer.dart';
import 'dart:developer' as developer;

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  _DesktopBodyState createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  static const double explorerMinWidth = 220;
  static const double explorerMaxWidth = 480;
  double explorerwidth = explorerMinWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          child: const Explorer(),
          color: Colors.white,
          constraints: BoxConstraints(minWidth: explorerwidth),
        ),
        Draggable(
            child: _homeDivider(),
            feedback: _homeDivider(),
            axis: Axis.horizontal,
            onDragUpdate: (dragDetails) {
              var newX = dragDetails.localPosition.dx;

              if (explorerMinWidth <= newX && explorerMaxWidth >= newX) {
                setState(() => explorerwidth = dragDetails.localPosition.dx);
              }
            }),
        Expanded(
          child: Container(
            child: const Editor(),
          ),
        )
      ],
    ));
  }
}

Widget _homeDivider() {
  return const MouseRegion(
    cursor: SystemMouseCursors.resizeColumn,
    child: VerticalDivider(
      width: 8,
      thickness: 2,
    ),
  );
}
