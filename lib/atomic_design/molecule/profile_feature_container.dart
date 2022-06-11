import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import '../../util/util_colors.dart';

class ProfileFeatureContainer extends StatelessWidget {
  final String variable;
  final String variableNumb;

  const ProfileFeatureContainer({
    Key? key,
    required this.variable,
    required this.variableNumb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.w,
      height: 70.h,
      decoration: BoxDecoration(
        border: Border.all(color: UtilColor.softGrey),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LatoText(
                variable: variableNumb,
                size: 14.r,
                weight: FontWeight.w700,
                colors: UtilColor.greyDark),
            SizedBox(height: 6.h),
            LatoText(
                variable: variable,
                size: 10.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark),
          ],
        ),
      ),
    );
  }
}
