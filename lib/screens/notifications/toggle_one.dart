import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atomic_design/atom/raleway_text.dart';
import '../../atomic_design/molecule/notification_container.dart';
import '../../atomic_design/molecule/notifications_all.dart';
import '../../util/util_colors.dart';

class ToggleOne extends StatelessWidget {
  const ToggleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          RalewayText(
              variable: "Today",
              size: 18.sp,
              weight: FontWeight.w700,
              colors: UtilColor.greyDark),
          SizedBox(height: 18.h),
          const NotificationContainer(),
          SizedBox(height: 10.h),
          const NotificationContainer(),
          SizedBox(height: 10.h),
          const NotificationContainer(),
          SizedBox(height: 10.h),
          const NotificationContainer(),
          SizedBox(height: 10.h),
          const NotificationContainer(),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
