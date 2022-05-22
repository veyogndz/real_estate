import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class VerticalExplore extends StatefulWidget {
  const VerticalExplore({Key? key}) : super(key: key);

  @override
  State<VerticalExplore> createState() => _VerticalExploreState();
}

class _VerticalExploreState extends State<VerticalExplore> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 160.w,
          height: 231.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: Colors.grey.withOpacity(0.2)
          ),
        ),
        Container(
          width: 160.w,
          height: 231.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
            color: Colors.grey.withOpacity(0.2)
          ),
        )
      ],
    );
  }
}
