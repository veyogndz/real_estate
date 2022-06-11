import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/auth_helper/auht_helper_user.dart';
import 'package:real_estate/util/util_colors.dart';

class NotificationContainer extends StatefulWidget {
  const NotificationContainer({Key? key}) : super(key: key);

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  final box = GetStorage();
  late FirebaseMessaging messaging;
  List<String>notifications=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value) {
      print("Token " + value.toString());
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      box.write("messageContent", event.notification!.body);
      print(event.notification!.body);
    });
    notifications.add(box.read("messageContent"));
    AuthHelperUser().updateNotifications(
        FirebaseAuth.instance.currentUser!.uid, notifications);
  }

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
            height: 108.h,
            decoration: BoxDecoration(
              color: UtilColor.softGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RalewayText(
                          variable: "NameText",
                          size: 12.r,
                          weight: FontWeight.w700,
                          colors: UtilColor.greyDark),
                      SizedBox(height: 15.h),
                      SizedBox(
                        width: 177.w,
                        height: 42.h,
                        child: RalewayText(
                            variable: box.read("messageContent").toString(),
                            size: 10.r,
                            weight: FontWeight.w500,
                            colors: UtilColor.greyDark),
                      ),
                      SizedBox(height: 10.h),
                      LatoText(
                          variable: "Minutes AGO",
                          size: 8.r,
                          weight: FontWeight.w400,
                          colors: UtilColor.softGrey)
                    ],
                  ),
                  Container(
                    width: 60.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.amber),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
