import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class DividerVertical extends StatelessWidget {
  const DividerVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w,
      height: 28.h,
      color: AppColors.primaryGreyColor,);
  }
}