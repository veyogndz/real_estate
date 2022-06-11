import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/molecule/message_container.dart';

import '../../atomic_design/atom/raleway_text.dart';
import '../../util/util_colors.dart';
class ToggleTwo extends StatelessWidget {
  const ToggleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          RalewayText(
              variable: "All Chats",
              size: 18.sp,
              weight: FontWeight.w700,
              colors: UtilColor.greyDark),
          SizedBox(height: 18.h),
          const MessageContainer(),
        ],
      ),
    );
  }
}
