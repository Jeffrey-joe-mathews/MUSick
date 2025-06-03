import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class Mytextformfield extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final bool obscureText;
  const Mytextformfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      obscuringCharacter: "⧫",
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Pallete.greyColor),
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$hintText is missing";
        } else {
          return null;
        }
      },
    );
  }
}
