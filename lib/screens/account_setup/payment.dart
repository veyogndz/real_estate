import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/molecule/master_text_field_column.dart';
import 'package:real_estate/atomic_design/molecule/payment_row.dart';
import 'package:real_estate/atomic_design/molecule/paypal_text_field_column.dart';
import 'package:real_estate/auth_helper/auht_helper_user.dart';
import 'package:real_estate/models/payment_model.dart';
import 'package:real_estate/screens/account_setup/card_container.dart';
import 'package:real_estate/screens/account_setup/user_account.dart';
import '../../atomic_design/atom/dmSans_text.dart';
import '../../atomic_design/atom/lato_text.dart';
import '../../atomic_design/molecule/back_button.dart';
import '../../atomic_design/molecule/next_button.dart';
import '../../atomic_design/molecule/skip_button.dart';
import '../../util/util_colors.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isSelectedPaypalColor = false;
  bool isSelectedPaypal = false;
  bool isSelectedMasterColor = false;
  bool isSelectedMastercard = false;
  bool isSelectedVisaColor = false;
  bool isSelectedVisa = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  //TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController expirationDate = TextEditingController();
  TextEditingController cvv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
              child: Column(
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
                          variable: "Add your",
                          size: 25.r,
                          weight: FontWeight.w500,
                          colors: UtilColor.latoColor),
                      LatoText(
                          variable: "payment method",
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
                  SizedBox(height: 32.h),
                  const CardContainer(),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: SizedBox(
                width: 365.w,
                height: 50.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PaymentRow(
                      onPressPaypal: () {
                        if (isSelectedPaypal == true &&
                            isSelectedPaypalColor == true) {
                          isSelectedPaypal = false;
                          isSelectedPaypalColor = false;
                          setState(() {});
                        } else {
                          isSelectedPaypal = true;
                          isSelectedPaypalColor = true;
                          isSelectedMastercard = false;
                          isSelectedMasterColor = false;
                          isSelectedVisa = false;
                          isSelectedVisaColor = false;
                          setState(() {});
                        }
                        // print(index)
                      },
                      paypalTextColor: !isSelectedPaypalColor
                          ? UtilColor.paymentSelectColor
                          : Colors.white,
                      paypalColor: !isSelectedPaypalColor
                          ? UtilColor.containerColor
                          : UtilColor.paymentSelectColor,
                      onPressMastercard: () {
                        if (isSelectedMastercard == true &&
                            isSelectedMasterColor == true) {
                          isSelectedMastercard = false;
                          isSelectedMasterColor = false;
                          setState(() {});
                        } else {
                          isSelectedMastercard = true;
                          isSelectedMasterColor = true;
                          isSelectedPaypal = false;
                          isSelectedPaypalColor = false;
                          isSelectedVisa = false;
                          isSelectedVisaColor = false;
                          setState(() {});
                        }
                      },
                      masterColor: !isSelectedMasterColor
                          ? UtilColor.containerColor
                          : UtilColor.paymentSelectColor,
                      masterTextColor: !isSelectedMasterColor
                          ? UtilColor.paymentSelectColor
                          : Colors.white,
                      onPressVisa: () {
                        if (isSelectedVisa == true && isSelectedVisaColor) {
                          isSelectedVisa = false;
                          isSelectedVisaColor = false;
                          setState(() {});
                        } else {
                          isSelectedVisa = true;
                          isSelectedVisaColor = true;
                          isSelectedPaypal = false;
                          isSelectedPaypalColor = false;
                          isSelectedMastercard = false;
                          isSelectedMasterColor = false;
                          setState(() {});
                        }
                      },
                      visaColor: !isSelectedVisa
                          ? UtilColor.containerColor
                          : UtilColor.paymentSelectColor,
                      visaTextColor: !isSelectedVisa
                          ? UtilColor.paymentSelectColor
                          : Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            !isSelectedPaypal
                ? SizedBox(width: 1.w, height: 0.000.h)
                : Padding(
                padding:
                EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
                child:  PaypalTextFieldColumn(
                  nameController: nameController,
                  emailController: emailController,
                )),
            !isSelectedMastercard
                ? SizedBox(width: 1.w, height: 0.000.h)
                : Padding(
                padding:
                EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
                child: MasterTextFieldColumn(
                  nameController: nameController,
                  cvv: cvv,
                  expirationDate: expirationDate,
                  numberController: numberController,
                )),
            !isSelectedPaypal && !isSelectedMastercard
                ? SizedBox(height: 225.h)
                : SizedBox(height: 55.h),
            Padding(
              padding: EdgeInsets.only(left: 49.w, right: 48.w),
              child: SizedBox(
                width: 278.w,
                height: 63.h,
                child: NextButton(onPressed: (){
                   PaymentModel paymentModel = PaymentModel(
                     name: nameController.text,
                     email: emailController.text,
                     cardNumber: numberController.text,
                     expirationDate: expirationDate.text,
                     cvv: cvv.text,);
                   AuthHelperUser().addPaymentMethod(paymentModel, FirebaseAuth.instance.currentUser!.uid);
                   Get.to(const UserAccount());
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
