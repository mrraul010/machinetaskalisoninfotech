import 'package:flutter/material.dart';

class LoginFormFields extends StatelessWidget {
  final String title;
  final String hinttext;
  final TextInputType textInputType;
  final VoidCallback onpressed;
  const LoginFormFields({
    super.key,
    required this.title,
    required this.onpressed,
    required this.hinttext,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF222222),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 14, color: Colors.black87),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          ),
        ),
      ],
    );
  }
}
