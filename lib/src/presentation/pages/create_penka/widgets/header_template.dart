import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderTemplate extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;
  const HeaderTemplate({super.key, required this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        if (onPress != null)
          GestureDetector(
            onTap: () {
              onPress!();
            },
            child: Text(
              'see_all'.tr,
            ),
          ),
      ],
    );
  }
}
