import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/util_colors.dart';
import '../atom/raleway_text.dart';

class PaymentRow extends StatefulWidget {
  final Function()? onPressPaypal;
  final Function()? onPressMastercard;
  final Function()? onPressVisa;
  final Color paypalColor;
  final Color paypalTextColor;
  final Color masterColor;
  final Color masterTextColor;
  final Color visaColor;
  final Color visaTextColor;

  const PaymentRow(
      {Key? key,
      required this.onPressPaypal,
      required this.onPressMastercard,
      required this.onPressVisa,
      required this.paypalColor,
      required this.masterColor,
      required this.paypalTextColor,
      required this.masterTextColor,
      required this.visaColor,
      required this.visaTextColor,
      })
      : super(key: key);

  @override
  State<PaymentRow> createState() => _PaymentRowState();
}

class _PaymentRowState extends State<PaymentRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Container(
            width: 112.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: widget.paypalColor,
                borderRadius: BorderRadius.circular(100.r),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/paypal.png"),
                SizedBox(width: 8.w),
                RalewayText(
                    variable: "PayPal",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors: widget.paypalTextColor)
              ],
            ),
          ),
          onTap: widget.onPressPaypal,
        ),
        SizedBox(width: 10.w),
        InkWell(
          child: Container(
            width: 134.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: widget.masterColor,
                borderRadius: BorderRadius.circular(100.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/master_color.png"),
                SizedBox(width: 8.w),
                RalewayText(
                    variable: "Mastercard",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors:widget.masterTextColor)
              ],
            ),
          ),
          onTap: widget.onPressMastercard,
        ),
        SizedBox(width: 10.w),
        InkWell(
            child: Container(
              width: 99.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: widget.visaColor,
                  borderRadius: BorderRadius.circular(100.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/visa.png"),
                  SizedBox(width: 8.w),
                  RalewayText(
                      variable: "Visa",
                      size: 10.r,
                      weight: FontWeight.w500,
                      colors: widget.visaTextColor)
                ],
              ),
            ),
            onTap: widget.onPressVisa),
      ],
    );
  }
}
