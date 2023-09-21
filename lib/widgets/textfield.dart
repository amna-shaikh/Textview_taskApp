import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final TextEditingController textcontroller;
  int textIndex;
  CustomTextField(
      {super.key, required this.textcontroller, required this.textIndex});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textcontroller,
      decoration: InputDecoration(
          labelText: 'Enter text$textIndex',
          // Set border for enabled state (default)
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
          // Set border for focused state
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.indigo),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
