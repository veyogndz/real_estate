import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/util/util_colors.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 130.h),
        Image.asset("assets/danger.png"),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LatoText(
                variable: "Search ",
                size: 25.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark),
            LatoText(
                variable: "fot found",
                size: 25.r,
                weight: FontWeight.w800,
                colors: UtilColor.greyDark),
          ],
        ),
        SizedBox(height: 20.h),
        Center(
          child: RalewayText(
              variable:
                  "Sorry, we can’t find the real estates you are looking for. Maybe, a little spelling mistake?",
              size: 12.r,
              weight: FontWeight.w400,
              colors: UtilColor.greyDark),
        )
      ],
    );
  }
}
