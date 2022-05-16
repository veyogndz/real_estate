import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/dmSans_text.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/back_button.dart';
import 'package:real_estate/atomic_design/molecule/next_button.dart';
import 'package:real_estate/atomic_design/molecule/select_grid.dart';
import 'package:real_estate/screens/account_setup/payment.dart';
import '../../atomic_design/molecule/skip_button.dart';
import '../../auth_helper/auht_helper_user.dart';
import '../../models/house_model.dart';
import '../../util/util_colors.dart';

class Preferable extends StatefulWidget {
  const Preferable({Key? key}) : super(key: key);

  @override
  State<Preferable> createState() => _PreferableState();
}

class _PreferableState extends State<Preferable> {
  List<String> pictureList = [
    "assets/p1.png",
    "assets/p2.png",
    "assets/p3.png",
    "assets/p4.png",
    "assets/p5.png",
    "assets/p6.png",
  ];

  List<String> textList = [
    "Apartment",
    "Villa",
    "Home",
    "Cottage",
    "Home",
    "Cottage",
  ];
  List<String> houseType = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButtons(
                        onPress: () {
                          Get.back();
                        },
                        color: UtilColor.gfButton,
                        stepChild: Image.asset(
                          "assets/arrow_back.png",
                          width: 16.w,
                          height: 15.56.h,
                        ),
                      ),
                      SkipButton(onPressed: () {})
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LatoText(
                          variable: "Select your preferable",
                          size: 25.r,
                          weight: FontWeight.w500,
                          colors: UtilColor.latoColor),
                      LatoText(
                          variable: "real estate type",
                          size: 25.r,
                          weight: FontWeight.w800,
                          colors: UtilColor.latoColor),
                      SizedBox(height: 20.h),
                      DmSansText(
                          variable:
                              "You can edit this later on your account setting.",
                          size: 12.r,
                          weight: FontWeight.w400,
                          colors: UtilColor.greyDark)
                    ],
                  ),
                  SizedBox(height: 50.h),
                  SizedBox(
                    width: 334.w,
                    height: 550.h,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 1 / 1.3.r,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: pictureList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return SelectGrid(
                            variablePic: pictureList[index],
                            variableText: textList[index],
                            onPress: (val) {
                              if (val == false) {
                                houseType.add(textList[index]);
                                print(houseType.toString());
                                print(houseType.length.toString());
                              } else if (val == true) {
                                houseType.remove(textList[index]);
                                print(houseType.toString());
                                print(houseType.length);
                              }
                            },
                          );
                        }),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 278.w,
                    height: 63.h,
                    child: NextButton(
                      onPressed: () {
                        HouseModel houseModel =
                            HouseModel(houseType: houseType.toString());
                        if (houseType.isNotEmpty) {
                          AuthHelperUser().addHouseType(houseModel,
                              FirebaseAuth.instance.currentUser!.uid);
                          Get.off(const Payment());
                          Get.closeAllSnackbars();
                        } else {
                          Get.snackbar("", "Lütfen en az 1 seçim yapınız.");
                        }
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
