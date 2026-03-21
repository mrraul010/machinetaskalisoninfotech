import 'package:flutter/material.dart';
import 'package:machinetaskalisoninfotech/presentation/categories/categories_screen.dart';
import 'package:machinetaskalisoninfotech/presentation/home/homescreen.dart';
import 'package:machinetaskalisoninfotech/presentation/login/login_screen.dart';
import 'package:machinetaskalisoninfotech/presentation/product_details/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lufga',
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
    );
  }
}
