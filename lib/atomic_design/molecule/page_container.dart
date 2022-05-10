import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/util/util_colors.dart';
class PageContainer extends StatelessWidget {
  final Widget? stepchild;
  const PageContainer({Key? key,required this.stepchild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 812.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: UtilColor.containerColor
      ),
      child:stepchild,
    );
  }
}
