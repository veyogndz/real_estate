import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/util_colors.dart';
import '../atom/raleway_text.dart';
class AllDiscount extends StatefulWidget {
  const AllDiscount({Key? key}) : super(key: key);

  @override
  _AllDiscountState createState() => _AllDiscountState();
}

class _AllDiscountState extends State<AllDiscount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Container(
            width: 270.w,
            height: 180.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: UtilColor.gfButton),
            child: Stack(
              children: [
                Image.asset("assets/image_25.png"),
                Image.asset("assets/open_black.png"),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 41.h),
                  child: SizedBox(
                    width: 103.w,
                    height: 65.h,
                    child: Column(
                      children: [
                        RalewayText(
                            variable: "Halloween Sale !",
                            size: 18.r,
                            weight: FontWeight.w700,
                            colors: Colors.white),
                        RalewayText(
                            variable: "All discount up to 60%",
                            size: 10.r,
                            weight: FontWeight.w400,
                            colors: Colors.white)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 115.h),
                  child: Container(
                    width: 93.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: UtilColor.paymentSelectColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.r))),
                    child: Image.asset("assets/long_arrow.png"),
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            width: 270.w,
            height: 180.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: UtilColor.gfButton),
            child: Stack(
              children: [
                Image.asset("assets/image_26.png"),
                Image.asset("assets/open_black.png"),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 41.h),
                  child: SizedBox(
                    width: 103.w,
                    height: 65.h,
                    child: Column(
                      children: [
                        RalewayText(
                            variable: "Summer Vacation",
                            size: 18.r,
                            weight: FontWeight.w700,
                            colors: Colors.white),
                        RalewayText(
                            variable: "All discount up to 60%",
                            size: 10.r,
                            weight: FontWeight.w400,
                            colors: Colors.white)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 115.h),
                  child: Container(
                    width: 93.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: UtilColor.paymentSelectColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.r))),
                    child: Image.asset("assets/long_arrow.png"),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

