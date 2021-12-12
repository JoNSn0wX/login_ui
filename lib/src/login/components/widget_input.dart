import 'package:flutter/material.dart';

class WidgetInput extends StatelessWidget {
  const WidgetInput({required this.name, required this.obscureText,required this.nameController});
  final String name; // hang so va chi gan 1 lan
  final bool obscureText;
  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText,
        controller: nameController,
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: name));
  }
}