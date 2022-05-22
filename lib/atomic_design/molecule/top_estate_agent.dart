import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/util/util_colors.dart';

class TopEstateAgent extends StatefulWidget {
  const TopEstateAgent({Key? key}) : super(key: key);

  @override
  _TopEstateAgentState createState() => _TopEstateAgentState();
}

class _TopEstateAgentState extends State<TopEstateAgent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 70.w,
              height: 90.h,
              child: Image.asset("assets/human1.png"),
            ),
            RalewayText(
                variable: "Amanda",
                size: 10.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark)
          ],
        ),
        SizedBox(width: 15.w),
        Column(
          children: [
            SizedBox(
              width: 70.w,
              height: 90.h,
              child: Image.asset("assets/human2.png"),
            ),
            RalewayText(
                variable: "Anderson",
                size: 10.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark)
          ],
        ),
        SizedBox(width: 15.w),
        Column(
          children: [
            SizedBox(
              width: 70.w,
              height: 90.h,
              child: Image.asset("assets/human3.png"),
            ),
            RalewayText(
                variable: "Samantha",
                size: 10.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark)
          ],
        ),
        SizedBox(width: 15.w),
        Column(
          children: [
            SizedBox(
              width: 70.w,
              height: 90.h,
              child: Image.asset("assets/human4.png"),
            ),
            RalewayText(
                variable: "Andrew",
                size: 10.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark)
          ],
        ),
        SizedBox(width: 15.w),
        Column(
          children: [
            SizedBox(
              width: 70.w,
              height: 90.h,
              child: Image.asset("assets/human5.png"),
            ),
            RalewayText(
                variable: "Amanda",
                size: 10.r,
                weight: FontWeight.w500,
                colors: UtilColor.greyDark)
          ],
        ),
      ],
    );
  }
}
//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