import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetButton extends StatelessWidget {
  WidgetButton({Key? key, required this.colos, required this.name, required this.onTap}) : super(key: key);
  final name;
  Color colos;
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
        color: colos,
        child: Center(child: Text(name)),
      ),
    );
  }
}