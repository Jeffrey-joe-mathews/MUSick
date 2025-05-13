import 'package:flutter/material.dart';

class Mytextformfield extends StatelessWidget {
  
  final String? hintText;
  const Mytextformfield({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText
      ),
    );
  }
}