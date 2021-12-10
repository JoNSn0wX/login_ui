import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetButton extends StatelessWidget {
  WidgetButton(
      {Key? key, required this.name, required this.colors, required this.onTap})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final name;
  Color colors;
  // Icon icons;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap();
        },
        child: Center(
          child: ElevatedButton.icon(
            onPressed: () => {},
            icon: const Icon(
              Icons.login,
              size: 32,
            ),
            label: Text(name),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 45),
              primary: Colors.green,
              onPrimary: Colors.white,
            ),
          ),
        ));
  }
}
