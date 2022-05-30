import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/molecule/back_button.dart';
import 'package:real_estate/atomic_design/molecule/long_toggle_button.dart';
import 'package:real_estate/util/util_colors.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 13.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtons(
                      onPress: () {},
                      stepChild: Image.asset("assets/arrow_back.png"),
                      color: UtilColor.gfButton),
                  BackButtons(
                      onPress: () {},
                      stepChild: Image.asset("assets/trash.png"),
                      color: UtilColor.gfButton),
                ],
              ),
              SizedBox(height: 20.h),
              LongToggleButton(
                values: const ["Notification", "Messages"],
                onToggleCallback: (value) {
                  setState(() {});
                },
              ),
              SizedBox(height: 20.h),
              
            ],
          ),
        ),
      ),
    );
  }
}
