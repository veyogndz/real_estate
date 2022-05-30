import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsAll extends StatefulWidget {
  const NotificationsAll({Key? key}) : super(key: key);

  @override
  State<NotificationsAll> createState() => _NotificationsAllState();
}

class _NotificationsAllState extends State<NotificationsAll> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 329.w,
      height: 47.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 62.w,
            height: 47.h,
          ),
          Container(
            width: 62.w,
            height: 47.h,
          ),
          Container(
            width: 62.w,
            height: 47.h,
          ),
          Container(
            width: 62.w,
            height: 47.h,
          ),
        ],
      ),
    );
  }
}
