import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff7C2F02),
            ),
          ),
          Row(
            children: const [
              Icon(Icons.chevron_left, color: Colors.grey),
              SizedBox(width: 6),
              Icon(Icons.chevron_right, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
