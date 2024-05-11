import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast/utils/colors/text_colors.dart';

abstract class AppTextStyles {
  static final TextStyle mainRegular = GoogleFonts.openSans(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: TextColors.secondaryColor,
  );

  static final TextStyle mainBold = GoogleFonts.openSans(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: TextColors.secondaryColor,
  );
}
