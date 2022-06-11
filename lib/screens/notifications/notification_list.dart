import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/atomic_design/molecule/back_button.dart';
import 'package:real_estate/atomic_design/molecule/long_toggle_button.dart';
import 'package:real_estate/atomic_design/molecule/notification_container.dart';
import 'package:real_estate/atomic_design/molecule/notifications_all.dart';
import 'package:real_estate/screens/notifications/toggle_one.dart';
import 'package:real_estate/screens/notifications/toggle_two.dart';
import 'package:real_estate/util/util_colors.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  bool isNotification = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      print(event.notification!.body);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked!');
    });
    messaging.getToken().then((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 13.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  if(value==0){
                    isNotification = true;
                    setState((){});
                  }else{
                    isNotification = false;
                    setState((){});
                  }
                  setState((){});
                  print(value);
                },
              ),
              SizedBox(height: 20.h),
              isNotification ?  const NotificationsAll() : const SizedBox(),
              SizedBox(height: 20.h),
             isNotification ? const ToggleOne() :  const ToggleTwo()
            ],
          ),
        ),
      ),
    );
  }
}
