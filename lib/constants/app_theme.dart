import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gontodomobile/constants/app_colors.dart';
import 'package:gontodomobile/constants/font_family.dart';

TextStyle defaultText = const TextStyle(
  fontFamily: FontFamily.roboto,
);

TextTheme textTheme = TextTheme(
  displayLarge:
      defaultText.copyWith(fontSize: 32.sp, fontWeight: FontWeight.bold),
  displayMedium:
      defaultText.copyWith(fontSize: 28.sp, fontWeight: FontWeight.bold),
  displaySmall:
      defaultText.copyWith(fontSize: 24.sp, fontWeight: FontWeight.bold),
  headlineLarge:
      defaultText.copyWith(fontSize: 22.sp, fontWeight: FontWeight.bold),
  headlineMedium:
      defaultText.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
  headlineSmall: defaultText.copyWith(fontSize: 16.sp),
  titleLarge:
      defaultText.copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
  titleMedium:
      defaultText.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
  titleSmall:
      defaultText.copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
  bodyLarge: defaultText.copyWith(fontSize: 18.sp),
  bodyMedium: defaultText.copyWith(fontSize: 16.sp),
  bodySmall: defaultText.copyWith(fontSize: 14.sp),
  labelLarge: defaultText.copyWith(fontSize: 16.sp),
  labelMedium: defaultText.copyWith(fontSize: 14.sp),
  labelSmall: defaultText.copyWith(fontSize: 12.sp),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: textTheme,
  colorScheme: const ColorScheme.dark(
    background: AppColors.black,
    primary: AppColors.purple50,
    onPrimary: AppColors.purple,
    secondary: AppColors.white,
    tertiary: AppColors.gray,
    error: AppColors.red,
  ),
);

ThemeData lightTheme = darkTheme;
// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.dark,
//    textTheme: textTheme,
//   colorScheme: const ColorScheme.dark(
//     background: AppColors.mainBackground,
//     primary: AppColors.primary,
//   ),
// );
