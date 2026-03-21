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
          padding: EdgeInsets.all(4),
          child: Image.asset(
            'assets/images/alisoninfotechappbarlogo.png',
            width: 69,
            height: 42,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
