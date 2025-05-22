import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/constants.dart';
import 'colors.dart';

class AppTextStyles {
  /// White Fonts
  static TextStyle fontWhite14W400   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryWhiteColor, fontSize: 14.sp, fontWeight: FontWeight.w400));
  static TextStyle fontWhite18W400   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryWhiteColor, fontSize: 18.sp, fontWeight: FontWeight.w400));
  static TextStyle fontWhite14W500   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryWhiteColor, fontSize: 14.sp, fontWeight: FontWeight.w500));
  static TextStyle fontWhite32W400   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryWhiteColor, fontSize: 32.sp, fontWeight: FontWeight.w400));
  static TextStyle fontYellow32W400   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryYellowColor, fontSize: 32.sp, fontWeight: FontWeight.w400));
  static TextStyle fontWhite50W500   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryWhiteColor, fontSize: 50.sp, fontWeight: FontWeight.w500));
  static TextStyle fontDateColor50W500   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.dateColor, fontSize: 50.sp, fontWeight: FontWeight.w500));

  /// Black Fonts
  static TextStyle fontBlack14W500   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryBlackColor, fontSize: 14.sp, fontWeight: FontWeight.w600,));

  static TextStyle fontYellow9W500   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryYellowColor, fontSize: 12.sp, fontWeight: FontWeight.w500,));

  /// Other Fonts
  static TextStyle fontWhite12W400   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryLightGreyColor, fontSize: 12.sp, fontWeight: FontWeight.w400));
  static TextStyle fontWhite8W500   = GoogleFonts.inter(textStyle:TextStyle(color: AppColors.primaryYellowColor, fontSize: 8.5.sp, fontWeight: FontWeight.w500));
}