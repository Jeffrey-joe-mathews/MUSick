import 'package:client/features/auth/view/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    body: Column(
      children: [
        // space at the top to not completely center the thing
        const SizedBox(height: 60,),

        const Text('Sign Up', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
        Mytextformfield()
      ],
    ),
    );
  }
}