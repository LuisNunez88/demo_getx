import 'package:flutter/material.dart';

import '../../../../config/theme/app_colors.dart';

class RememberMe extends StatelessWidget {
  final String text;
  final bool check;
  final ValueChanged<bool?>? onChanged;
  const RememberMe({
    super.key,
    this.text = '',
    this.check = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: check,
          activeColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(
              width: 1.0,
              color: AppColors.primary,
            ),
          ),
          onChanged: onChanged,
        ),
        Text(text)
      ],
    );
  }
}
