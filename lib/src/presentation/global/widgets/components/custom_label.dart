import 'package:flutter/material.dart';

import '../../../../config/theme/app_colors.dart';

class CustomLabel extends StatelessWidget {
  final String text;
  final bool isRequired;
  const CustomLabel(this.text, {super.key, this.isRequired = false});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: AppColors.inputLabelColor),
        text: text,
        children: [
          if (isRequired)
            const TextSpan(
              text: '*',
              style: TextStyle(color: AppColors.inputErrorColor),
            )
        ],
      ),
    );
  }
}
