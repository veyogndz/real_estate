import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/back_button.dart';
import 'package:real_estate/atomic_design/molecule/next_button.dart';
import 'package:real_estate/atomic_design/molecule/page_container.dart';
import 'package:real_estate/atomic_design/molecule/skip_button.dart';
import 'package:real_estate/screens/login/login_option.dart';
import 'package:real_estate/screens/onboarding/product_tour_3.dart';
import 'package:real_estate/util/util_colors.dart';

class ProductTour2 extends StatefulWidget {
  const ProductTour2({Key? key}) : super(key: key);

  @override
  _ProductTour1State createState() => _ProductTour1State();
}

class _ProductTour1State extends State<ProductTour2> {
  final controller = PageController(viewportFraction: 1.0, keepPage: true);
  final _currentPageNotifier = ValueNotifier<int>(0);
  List<String> picture = [
    "assets/onboarding_two.png",
    "assets/onboarding_three.png",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        backgroundColor: UtilColor.containerColor,
        body: SafeArea(
          child: PageContainer(
            stepchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 30.4.h, right: 24.w, left: 24.29.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/log.png",
                        height: 55.36.h,
                        width: 52.32.w,
                      ),
                      SkipButton(onPressed: () {
                        Get.to(LoginOption());
                      })
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.29.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LatoText(
                        variable: "Fast sell your property",
                        size: 25.r,
                        weight: FontWeight.w400,
                        colors: Colors.black,
                      ),
                      Row(
                        children: [
                          LatoText(
                            variable: "in just ",
                            size: 25.r,
                            weight: FontWeight.w400,
                            colors: Colors.black,
                          ),
                          LatoText(
                            variable: "one click",
                            size: 25.r,
                            weight: FontWeight.w800,
                            colors: UtilColor.latoColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 228.w,
                        height: 40.h,
                        child: LatoText(
                          variable: "Lorem ipsum dolor sit amet, consectetur "
                              "adipiscing elit, sed",
                          size: 12.r,
                          weight: FontWeight.w400,
                          colors: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
               // SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: SizedBox(
                    width: 355.w,
                    height: 502.h,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: PageView.builder(
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    child: Image.asset(picture[index]),
                                  );
                                },
                                itemCount: 2,
                                onPageChanged: (int index) {
                                  _currentPageNotifier.value = index;
                                },
                                controller: controller,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 392.h, left: 142.w),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                    BoxConstraints constraints) =>
                                LinearProgressPageIndicator(
                              itemCount: 2,
                              currentPageNotifier: _currentPageNotifier,
                              progressColor: Colors.white,
                              width: 70.w,
                              height: 3.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 405.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BackButtons(
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
                              SizedBox(width: 15.w),
                              NextButton(
                                  onPressed: () {
                                    Get.to(ProductTour3());
                                  },
                                  buttonName: "Next"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
