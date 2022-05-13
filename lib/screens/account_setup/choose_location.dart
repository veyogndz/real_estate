import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/screens/account_setup/maps.dart';
import 'package:real_estate/util/util_colors.dart';
import '../../atomic_design/molecule/back_button.dart';

class ChooseLocation extends StatelessWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero108",
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding:
                EdgeInsets.only(left: 8.w, right: 8.w, top: 8.h, bottom: 8.h),
            child: Stack(
              children: [
                const Maps(isShould: false),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(height: 15.h),
                      Container(
                        padding: EdgeInsets.only(top: 9.5.h, left: 5.w),
                        width: 327.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                            color: UtilColor.containerColor,
                            borderRadius: BorderRadius.circular(25.r)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(12.r),
                              border: InputBorder.none,
                              hintText: "Find location",
                              hintStyle: GoogleFonts.raleway(fontSize: 12.r),
                              prefixIcon: Image.asset("assets/search.png"),
                              suffixIcon: Image.asset("assets/voice.png")),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 250.h),
                Padding(
                  padding: EdgeInsets.only(
                      top: 540.h, bottom: 5.h, left: 24.w, right: 24.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 327.w,
                        height: 133.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.r)),
                        child: Padding(
                          padding:EdgeInsets.only(left: 15.w,top: 20.h,right: 15.w,bottom: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LatoText(
                                  variable: "Location detail",
                                  size: 18.r,
                                  weight: FontWeight.w700,
                                  colors: UtilColor.greyDark),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/group.png"),
                                  SizedBox(
                                    width:222.w ,
                                    child: Text("Srengseng, Kembangan, West Jakarta City, Jakarta 11630",style: GoogleFonts.dmSans(
                                      fontSize: 12.r,
                                      fontWeight: FontWeight.w400
                                    ),),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 278.w,
                        height: 63.h,
                        child: ElevatedButton(
                          onPressed: () {
                           // Get.to(const HomePage());
                          },
                          child: Text(
                            "Choose your location",
                            style: GoogleFonts.lato(
                                fontSize: 16.h,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: UtilColor.nextColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
