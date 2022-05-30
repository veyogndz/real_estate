import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/util/util_colors.dart';

class ToggleGridview extends StatefulWidget {
  final Image bigPicture;
  final String price;
  final String time;
  final String houseDetail;

  const ToggleGridview({
    Key? key,
    required this.bigPicture,
    required this.price,
    required this.time,
    required this.houseDetail,
  }) : super(key: key);

  @override
  State<ToggleGridview> createState() => _ToggleGridviewState();
}

class _ToggleGridviewState extends State<ToggleGridview> {
  bool isRed = false;
  Color colorHeart = Colors.red;
  Color colorHeartBack = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 274.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.sp,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.w,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3.sp),
        ),
        itemCount: 70,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            width: 160.w,
            height: 279.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: UtilColor.softGrey),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child: widget.bigPicture,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 95.w, top: 17.h),
                        child: SizedBox(
                          width: 30.w,
                          height: 30.h,
                          child: FloatingActionButton(
                              onPressed: () {
                                if (isRed == false) {
                                  colorHeart = Colors.white;
                                  colorHeartBack = UtilColor.nextColor;
                                  isRed = true;
                                  setState(() {});
                                } else {
                                  colorHeart = Colors.red;
                                  colorHeartBack = Colors.white;
                                  isRed = false;
                                  setState(() {});
                                }
                              },
                              backgroundColor: colorHeartBack,
                              child: Icon(
                                Icons.favorite_border,
                                color: colorHeart,
                                size: 15.sp,
                              )),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 55.w, top: 120.w),
                      child: Container(
                        width: 75.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color:
                                UtilColor.paymentSelectColor.withOpacity(0.9)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LatoText(
                                variable: widget.price,
                                size: 12.sp,
                                weight: FontWeight.w500,
                                colors: Colors.white),
                            LatoText(
                                variable: widget.time,
                                size: 12.sp,
                                weight: FontWeight.w500,
                                colors: Colors.white),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 128.w,
                  height: 36.h,
                  child: RalewayText(
                      variable: widget.houseDetail,
                      size: 12,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/star.png"),
                      SizedBox(width: 4.w),
                      LatoText(
                          variable: "4.9",
                          size: 8.r,
                          weight: FontWeight.w700,
                          colors: UtilColor.greyDark),
                      SizedBox(width: 10.w),
                      Image.asset("assets/group_orange.png"),
                      LatoText(
                          variable: "Jakarta , Indonesia",
                          size: 8.sp,
                          weight: FontWeight.w700,
                          colors: UtilColor.greyDark)
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );

    /*
      Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 160.w,
              height: 249.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: UtilColor.softGrey),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.w),
                        child: widget.bigPicture,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 95.w, top: 17.h),
                          child: SizedBox(
                            width: 30.w,
                            height: 30.h,
                            child: FloatingActionButton(
                                onPressed: () {
                                  if (isRed == false) {
                                    colorHeart = Colors.white;
                                    colorHeartBack = UtilColor.nextColor;
                                    isRed = true;
                                    setState(() {});
                                  } else {
                                    colorHeart = Colors.red;
                                    colorHeartBack = Colors.white;
                                    isRed = false;
                                    setState(() {});
                                  }
                                },
                                backgroundColor: colorHeartBack,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: colorHeart,
                                  size: 15.sp,
                                )),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 55.w, top: 120.w),
                        child: Container(
                          width: 75.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: UtilColor.paymentSelectColor
                                  .withOpacity(0.9)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LatoText(
                                  variable: widget.price,
                                  size: 12.sp,
                                  weight: FontWeight.w500,
                                  colors: Colors.white),
                              LatoText(
                                  variable: widget.time,
                                  size: 12.sp,
                                  weight: FontWeight.w500,
                                  colors: Colors.white),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 128.w,
                    height: 36.h,
                    child: RalewayText(
                        variable: widget.houseDetail,
                        size: 12,
                        weight: FontWeight.w700,
                        colors: UtilColor.greyDark),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/star.png"),
                        SizedBox(width: 4.w),
                        LatoText(
                            variable: "4.9",
                            size: 8.r,
                            weight: FontWeight.w700,
                            colors: UtilColor.greyDark),
                        SizedBox(width: 10.w),
                        Image.asset("assets/group_orange.png"),
                        LatoText(
                            variable: "Jakarta , Indonesia",
                            size: 8.sp,
                            weight: FontWeight.w700,
                            colors: UtilColor.greyDark)
                      ],
                    ),
                  )
                ],
              ),
            );


            Container(
              width: 160.w,
              height: 249.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: UtilColor.softGrey),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.w),
                        child: widget.bigPicture,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 95.w, top: 17.h),
                          child: SizedBox(
                            width: 30.w,
                            height: 30.h,
                            child: FloatingActionButton(
                                onPressed: () {
                                  if (isRed == false) {
                                    colorHeart = Colors.white;
                                    colorHeartBack = UtilColor.nextColor;
                                    isRed = true;
                                    setState(() {});
                                  } else {
                                    colorHeart = Colors.red;
                                    colorHeartBack = Colors.white;
                                    isRed = false;
                                    setState(() {});
                                  }
                                },
                                backgroundColor: colorHeartBack,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: colorHeart,
                                  size: 15.sp,
                                )),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 55.w, top: 120.w),
                        child: Container(
                          width: 75.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: UtilColor.paymentSelectColor
                                  .withOpacity(0.9)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LatoText(
                                  variable: widget.price,
                                  size: 12.sp,
                                  weight: FontWeight.w500,
                                  colors: Colors.white),
                              LatoText(
                                  variable: widget.time,
                                  size: 12.sp,
                                  weight: FontWeight.w500,
                                  colors: Colors.white),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 128.w,
                    height: 36.h,
                    child: RalewayText(
                        variable: widget.houseDetail,
                        size: 12,
                        weight: FontWeight.w700,
                        colors: UtilColor.greyDark),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/star.png"),
                        SizedBox(width: 4.w),
                        LatoText(
                            variable: "4.9",
                            size: 8.r,
                            weight: FontWeight.w700,
                            colors: UtilColor.greyDark),
                        SizedBox(width: 10.w),
                        Image.asset("assets/group_orange.png"),
                        LatoText(
                            variable: "Jakarta , Indonesia",
                            size: 8.sp,
                            weight: FontWeight.w700,
                            colors: UtilColor.greyDark)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
    */
  }
}
