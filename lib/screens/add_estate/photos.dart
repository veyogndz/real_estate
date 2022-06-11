import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/atomic_design/molecule/next_button.dart';
import 'package:real_estate/screens/add_estate/extra_information.dart';

import '../../atomic_design/atom/lato_text.dart';
import '../../atomic_design/molecule/back_button.dart';
import '../../controller/app_controller.dart';
import '../../util/util_colors.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  List<String> imagePath = [""];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.r),
                        color: UtilColor.gfButton),
                    child: Image.asset(
                      "assets/arrow_back.png",
                      width: 23.w,
                      height: 23.h,
                    ),
                  ),
                  SizedBox(width: 65.h),
                  LatoText(
                      variable: "Add Listing",
                      size: 15.sp,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                ],
              ),
              SizedBox(height: 40.h),
              RichText(
                text: TextSpan(
                  text: "Add ",
                  style: GoogleFonts.lato(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                      color: UtilColor.greyDark),
                  children: [
                    TextSpan(
                      text: "photos ",
                      style: GoogleFonts.lato(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w800,
                          color: UtilColor.greyDark),
                    ),
                    TextSpan(
                      text: "to your listing",
                      style: GoogleFonts.lato(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          color: UtilColor.greyDark),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              SizedBox(
                width: 317.w,
                height: 450.h,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.w,
                  mainAxisSpacing: 8.h,
                  children: List.generate(
                    imagePath.length,
                    (index) {
                      return Stack(
                        children: [
                          Container(
                            width: 159.w,
                            height: 161.h,
                            alignment: Alignment.center,
                            child: const Text("imagePath"),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(25.r)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 130.w),
                            child: SizedBox(
                              width: 30.w,
                              height: 30.h,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: UtilColor.nextColor,
                                child: Icon(
                                  Icons.delete_rounded,
                                  color: Colors.white,
                                  size: 12.w,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              NextButton(
                  onPressed: () {
                    AppController.to.addPhotos();
                  },
                  buttonName: "Den"),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: BackButtons(
                        onPress: () {
                          Get.back();
                        },
                        stepChild: Image.asset(
                          "assets/back.png",
                          width: 16.w,
                          height: 15.56.h,
                        ),
                        color: Colors.white,
                      ),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Colors.transparent,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              color: UtilColor.nextColor,
                              spreadRadius: 25,
                              blurRadius: 70),
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    NextButton(
                        onPressed: () {
                          Get.to(const ExtraInformation());
                        },
                        buttonName: "Next"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
     Container(
                      width: 78.w,
                      height: 78.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                    )
Stack(
                        children: [
                          Container(
                            width: 159.w,
                            height: 161.h,
                            alignment: Alignment.center,
                            child: const Text("imagePath"),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(25.r)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 130.w),
                            child: SizedBox(
                              width: 30.w,
                              height: 30.h,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: UtilColor.nextColor,
                                child:  Icon(Icons.delete_rounded,color: Colors.white,size: 12.w,),
                              ),
                            ),
                          ),
                        ],
                      );
 */
