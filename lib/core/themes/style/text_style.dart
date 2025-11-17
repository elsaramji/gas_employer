import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static const String fontFamilyInter = 'inter';

  static final TextStyle _interRegular = TextStyle(
    fontFamily: fontFamilyInter,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle _interMedium = TextStyle(
    fontFamily: fontFamilyInter,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle _interBold = TextStyle(
    fontFamily: fontFamilyInter,
    fontWeight: FontWeight.w700,
  );

  static TextStyle interRegular18 = _interRegular.copyWith(fontSize: 18.sp);
  static TextStyle interRegular20 = _interRegular.copyWith(fontSize: 20.sp);
  static TextStyle interRegular16 = _interRegular.copyWith(fontSize: 16.sp);
  static TextStyle interRegular14 = _interRegular.copyWith(fontSize: 14.sp);
  static TextStyle interRegular12 = _interRegular.copyWith(fontSize: 12.sp);

  static TextStyle interMedium18 = _interMedium.copyWith(fontSize: 18.sp);
  static TextStyle interMedium20 = _interMedium.copyWith(fontSize: 20.sp);
  static TextStyle interMedium16 = _interMedium.copyWith(fontSize: 16.sp);
  static TextStyle interMedium14 = _interMedium.copyWith(fontSize: 14.sp);
  static TextStyle interMedium12 = _interMedium.copyWith(fontSize: 12.sp);

  static TextStyle interBold18 = _interBold.copyWith(fontSize: 18.sp);
  static TextStyle interBold20 = _interBold.copyWith(fontSize: 20.sp);
  static TextStyle interBold16 = _interBold.copyWith(fontSize: 16.sp);
  static TextStyle interBold14 = _interBold.copyWith(fontSize: 14.sp);
  static TextStyle interBold12 = _interBold.copyWith(fontSize: 12.sp);
}
