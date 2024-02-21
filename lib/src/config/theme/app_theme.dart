import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_input_theme.dart';

class AppTheme {
  ThemeData get appTheme {
    final theme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: AppColors.primary,
        background: AppColors.appbarColor,
        surface: AppColors.appbarColor,
      ),
      inputDecorationTheme: inputTheme,
      iconTheme: const IconThemeData(color: AppColors.primary),
    );
    return theme.copyWith(
      textTheme: GoogleFonts.pathwayExtremeTextTheme(theme.textTheme),
    );
  }
}
