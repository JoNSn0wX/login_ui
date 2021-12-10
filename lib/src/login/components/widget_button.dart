// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  WidgetButton({Key? key, required this.name, required this.colors, required this.onTap}) : super(key: key);
  final name;
  Color colors;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        width: double.infinity,
        color: colors,
        child: Center(child: Text(name)),
      ),
    );
  }
}
