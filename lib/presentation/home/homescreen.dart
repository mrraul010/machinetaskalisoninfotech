import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7C2F02),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/images/alisoninfotechappbarlogo.png'),
        ),
      ),
    );
  }
}
