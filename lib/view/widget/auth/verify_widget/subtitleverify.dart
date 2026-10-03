import 'package:flutter/material.dart';

class SubTitleVerify extends StatelessWidget {
  const SubTitleVerify({super.key, required this.text, required this.size});
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        height: 1.6,
        color: Color(0xff6B7280),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
