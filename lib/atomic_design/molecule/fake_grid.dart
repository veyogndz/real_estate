import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FakeGrid extends StatelessWidget {
  final String variable;
  final String variable2;
  const FakeGrid({Key? key,required this.variable,required this.variable2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Padding(
      padding:EdgeInsets.only(left: 13.w,right: 12.w),
      child: Row(
        children: [
          SizedBox(
            width: 171.w,
            height: 174.h,
            child: Image.asset(variable),
          ),
          SizedBox(width: 4.w),
          SizedBox(
            width: 171.w,
            height: 174.h,
            child: Image.asset(variable2),
          )
        ],
      ),
    );
  }
}
