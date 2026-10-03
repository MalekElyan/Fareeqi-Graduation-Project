import 'package:flutter/material.dart';

class ApplicationStatModel {
  final String label;
  final int count;
  final Color textColor;
  final Color backgroundColor;

  const ApplicationStatModel({
    required this.label,
    required this.count,
    required this.textColor,
    required this.backgroundColor,
  });
}
