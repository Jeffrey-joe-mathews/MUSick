import 'package:client/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class MyAuthButton extends StatelessWidget {

  final String actionText;
  final void Function()? onPressedAuth;
  const MyAuthButton({super.key, required this.actionText, required this.onPressedAuth});

  static String text = "Sign Up";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Pallete.gradient1, Pallete.transparentColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressedAuth,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: const Size(395, 55),
          backgroundColor: Pallete.transparentColor,
          shadowColor: Pallete.transparentColor,
        ),
        child: Text(
          actionText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ), 
      ),
    );
  }
}
