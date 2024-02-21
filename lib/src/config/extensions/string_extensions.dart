import 'package:flutter/material.dart';

extension StringExtensions on String {
  Color hexToColor() {
    if (isEmpty) {
      return Colors.black;
    }
    return Color(int.parse(substring(1, 7), radix: 16) + 0xFF000000);
  }
}
