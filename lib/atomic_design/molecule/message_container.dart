import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/util_colors.dart';
import '../atom/raleway_text.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.r),
      child: Dismissible(
        direction: DismissDirection.endToStart,
        key: Key("qeasdf"),
        background: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: UtilColor.greyDark,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: Image.asset(
                "assets/trash.png",
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: Container(
            width: 327.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: UtilColor.softGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RalewayText(
                          variable: "NameText",
                          size: 12.r,
                          weight: FontWeight.w700,
                          colors: UtilColor.greyDark),
                      SizedBox(
                        width: 177.w,
                        height: 42.h,
                        child: RalewayText(
                            variable: "denenmemememem",
                            size: 10.r,
                            weight: FontWeight.w500,
                            colors: UtilColor.greyDark),
                      ),
                    ],
                  ), 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
