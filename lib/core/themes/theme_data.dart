import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_employer/core/themes/colors/app_colors.dart';
import 'package:gas_employer/core/themes/style/text_style.dart';

class AppThemeData {
  // light theme

  static ThemeData lightTheme() => ThemeData(
    brightness: Brightness.light,
    // color scheme
    colorScheme: AppColors.colorSchemeLight(),
    // text theme
    textTheme: TextTheme(
      displayLarge: AppTextStyle.interRegular16,
      displayMedium: AppTextStyle.interRegular14,
      displaySmall: AppTextStyle.interRegular12,
      headlineLarge: AppTextStyle.interBold18,
      headlineMedium: AppTextStyle.interBold16,
      headlineSmall: AppTextStyle.interBold14,
      titleLarge: AppTextStyle.interMedium20,
      titleMedium: AppTextStyle.interMedium18,
      titleSmall: AppTextStyle.interMedium16,
      bodyLarge: AppTextStyle.interRegular18,
      bodyMedium: AppTextStyle.interRegular16,
      bodySmall: AppTextStyle.interRegular12,
    ),
    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(50.h),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.background,
        textStyle: AppTextStyle.interBold16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
    // icon button theme
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        minimumSize: Size(50.w, 50.h),
        backgroundColor: AppColors.secondary,
        iconSize: 26.sp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
    // App icons theme
    iconTheme: IconThemeData(color: AppColors.primary, size: 26.sp),
    // input decoration theme
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: AppColors.background,
      constraints: BoxConstraints(minHeight: 50.h),
      //contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(color: AppColors.onSecondary, width: 1.sp),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(color: AppColors.error, width: 1.sp),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(color: AppColors.primary, width: 1.sp),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(color: AppColors.onSecondary, width: 1.sp),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(color: AppColors.onSecondary, width: 1.sp),
      ),
    ),
    // app bar theme
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(size: 26.sp, color: AppColors.primary),
    ),
  );
}
