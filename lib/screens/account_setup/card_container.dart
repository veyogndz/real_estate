import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/util/util_colors.dart';

class CardContainer extends StatefulWidget {
  final String cardNumb;
  final String expirationDate;
  final String cardName;

  const CardContainer({
    Key? key,
    required this.cardName,
    required this.cardNumb,
    required this.expirationDate,
  }) : super(key: key);

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w),
      child: Container(
        width: 306.w,
        height: 186.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              UtilColor.cardGrey,
              UtilColor.cardBlue,
            ],
          ),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.w, left: 27.h, top: 31.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/chip.png"),
                  SizedBox(
                    width: 155.w,
                    height: 24.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/touch.png"),
                        Image.asset("assets/contact.png"),
                        Image.asset("assets/apple_pay.png"),
                        Image.asset("assets/google_pay.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.w),
              child: Row(
                children: [
                 //Image.asset("assets/numb.png", width: 207.w),
                  LatoText(
                      variable: widget.cardNumb,
                      size: 20.r,
                      weight: FontWeight.w400,
                      colors: Colors.white)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.w, right: 24.w, bottom: 10.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/valid.png"),
                      SizedBox(width: 8.w),
                      LatoText(
                          variable: widget.expirationDate,
                          size: 20.r,
                          weight: FontWeight.w400,
                          colors: Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LatoText(
                          variable: widget.cardName,
                          size: 20.r,
                          weight: FontWeight.w400,
                          colors: Colors.white),
                      Image.asset("assets/mastercard.png")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
