import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)))
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff7C2F02),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
