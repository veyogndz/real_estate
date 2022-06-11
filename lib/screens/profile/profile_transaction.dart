import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/long_triple_toggle.dart';
import 'package:real_estate/controller/app_controller.dart';
import 'package:real_estate/screens/profile/listing.dart';
import 'package:real_estate/screens/profile/transaction.dart';
import 'package:real_estate/util/util_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../atomic_design/molecule/profile_feature_container.dart';

class ProfileTransaction extends StatefulWidget {
  const ProfileTransaction({Key? key}) : super(key: key);

  @override
  State<ProfileTransaction> createState() => _ProfileTransactionState();
}

class _ProfileTransactionState extends State<ProfileTransaction> {
  @override
  void initState() {
    super.initState();
    setState((){});
    AppController.to.getEmail();
    AppController.to.getUserName();
  }

  int listingNumber = 0;
  int soldNumber = 0;
  int reviewNumber = 0;
  String listing = "Listing";
  String sold = "Sold";
  String review = "Review";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.w),
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 145.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LatoText(
                        variable: "Profile",
                        size: 14.r,
                        weight: FontWeight.w700,
                        colors: UtilColor.greyDark),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: UtilColor.gfButton),
                      child: Image.asset("assets/setting.png"),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                            color: Colors.red),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.w, top: 65.h),
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: UtilColor.greyDark),
                          child: Image.asset("assets/pencil.png"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h),
                  LatoText(
                      variable: AppController.to.userName,
                      size: 14.r,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                  LatoText(
                      variable: AppController.to.email,
                      size: 10.r,
                      weight: FontWeight.w600,
                      colors: UtilColor.greyDark),
                ],
              ),
              SizedBox(height: 19.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileFeatureContainer(
                      variable: listing,
                      variableNumb: listingNumber.toString()),
                  ProfileFeatureContainer(
                      variable: sold, variableNumb: soldNumber.toString()),
                  ProfileFeatureContainer(
                      variable: review, variableNumb: reviewNumber.toString()),
                ],
              ),
              SizedBox(height: 20.h),
              ToggleSwitch(
                minWidth: 108.w,
                minHeight: 50.h,
                fontSize: 16.0,
                initialLabelIndex: 1,
                activeBgColor: const [Colors.white],
                dividerMargin: 0,
                cornerRadius: 100.r,
                dividerColor: Colors.transparent,
                activeFgColor: Colors.black,
                inactiveBgColor: UtilColor.gfButton,
                inactiveFgColor: UtilColor.softGrey,
                totalSwitches: 3,
                radiusStyle: true,
                curve: Curves.linear,
                doubleTapDisable: false,
                labels: const ['Transaction', 'Listings', 'Sold'],
                onToggle: (index) {
                  print('switched to: $index');
                  AppController.to.currentState = index;
                  print(AppController.to.currentState.toString());
                  AppController.to.update();
                },
              ),
              SizedBox(height: 20.h),
              GetBuilder<AppController>(builder: (context) {
                if (AppController.to.currentState == 0) {
                  return const Transaction();
                } else {
                  return const SizedBox(height: 0);
                }
              }),
              GetBuilder<AppController>(builder: (context) {
                if (AppController.to.currentState == 1) {
                  return const Listing();
                } else {
                  return SizedBox();
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
