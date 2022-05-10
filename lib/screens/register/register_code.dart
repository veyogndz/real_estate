import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/long_text_button.dart';
import 'package:real_estate/controller/app_controller.dart';
import 'package:real_estate/screens/register/register_form.dart';
import '../../util/util_colors.dart';

class RegisterCode extends StatefulWidget {

  const RegisterCode({Key? key}) : super(key: key);

  @override
  State<RegisterCode> createState() => _RegisterCodeState();
}

class _RegisterCodeState extends State<RegisterCode> {

  TextEditingController controller = TextEditingController(text: "");
  int pinLength = 4;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Get.back();
                },
                backgroundColor: UtilColor.gfButton,
                child: Image.asset(
                  "assets/arrow_back.png",
                  width: 16.w,
                  height: 15.56.h,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  LatoText(
                      variable: "Enter the ",
                      size: 25.r,
                      weight: FontWeight.w500,
                      colors: UtilColor.textColor),
                  LatoText(
                      variable: "code",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.textColor),
                ],
              ),
              SizedBox(height: 20.h),
              LatoText(
                  variable: "Enter the 4 digit code that we just sent to ",
                  size: 12.r,
                  weight: FontWeight.w400,
                  colors: UtilColor.textColor),
              SizedBox(height: 5.h),
              LatoText(
                variable: emailControllerContent.toString(),
                size: 12.r,
                weight: FontWeight.w600,
                colors: UtilColor.textColor),
              SizedBox(height: 80.h),
              PinCodeTextField(
                pinBoxRadius: 10.r,
                autofocus: true,
                controller: controller,
                hideCharacter: false,
                highlight: false,
                highlightColor: Colors.white,
                defaultBorderColor: Colors.white,
                hasTextBorderColor: UtilColor.greyDark,
                //highlightPinBoxColor: UtilColor.softGrey,
                maxLength: 4,
                hasError: hasError,
                maskCharacter: "😎",
                onTextChanged: (text) {},
                onDone: (text) {},
                pinBoxWidth: 74.25.w,
                pinBoxHeight: 70.h,
                hasUnderline: false,
                wrapAlignment: WrapAlignment.spaceAround,
                pinBoxDecoration:
                    ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 20.r),
                pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
                pinBoxColor: UtilColor.containerColor,
                pinTextAnimatedSwitcherDuration:
                    const Duration(milliseconds: 100),
                //highlightAnimation: true,
                highlightAnimationBeginColor: Colors.black,
                highlightAnimationEndColor: Colors.white12,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 224.h),
              Padding(
                padding: EdgeInsets.only(left: 118.5.w, right: 142.5.w),
                child: Container(
                  width: 90.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: UtilColor.containerColor,
                      borderRadius: BorderRadius.circular(100.r)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.w),
                      Image.asset("assets/timer.png"),
                      SizedBox(width: 8.h),
                      Row(
                        children: [
                          const Text("00."),
                          Text(AppController.to.counter.toString()),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              LongTextButton(
                  variable: "Didn’t receive the OTP?",
                  color: UtilColor.greyDark,
                  color2: UtilColor.greyDark,
                  variable2: "Resend OTP",
                  fontSize: 12.r,
                  onPressed: () {},
                  fontWeight: FontWeight.w400,
                  fontWeight2: FontWeight.w700)
            ],
          ),
        ),
      ),
    );
  }

  streamFunctionAll() {
    return FirebaseFirestore.instance
        .collection("users")
        .doc()
        .snapshots();
  }
}





/*
    StreamBuilder<DocumentSnapshot>(
                stream: streamFunctionAll(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Loading");
                  }
                  return LatoText(
                      variable: snapshot.data!['email'].toString(),
                      size: 12.r,
                      weight: FontWeight.w600,
                      colors: UtilColor.textColor);
                },
              ),
 */