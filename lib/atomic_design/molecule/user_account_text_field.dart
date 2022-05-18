import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import '../../util/util_colors.dart';

class UserAccountTextField extends StatefulWidget {

  final TextEditingController nameController;
  final TextEditingController phoneController;

  const UserAccountTextField({Key? key,
    required this.nameController,
    required this.phoneController,
  }) : super(key: key);

  @override
  _UserAccountTextFieldState createState() => _UserAccountTextFieldState();
}

class _UserAccountTextFieldState extends State<UserAccountTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 9.5.w),
          decoration: BoxDecoration(
              color: UtilColor.gfButton,
              borderRadius: BorderRadius.circular(10.r)),
          width: 327.w,
          height: 70.h,
          child: TextFormField(
            controller: widget.nameController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12.r),
              border: InputBorder.none,
              suffixIcon: Image.asset("assets/profile.png"),
            ),
            onTap: () {
              setState(() {});
            },
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          padding: EdgeInsets.only(top: 9.5.w),
          decoration: BoxDecoration(
              color: UtilColor.gfButton,
              borderRadius: BorderRadius.circular(10.r)),
          width: 327.w,
          height: 70.h,
          child: TextFormField(
            controller: widget.phoneController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12.r),
              border: InputBorder.none,
              suffixIcon: Image.asset("assets/call.png"),
            ),
            onTap: () {},
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          padding: EdgeInsets.only(top: 9.5.w),
          decoration: BoxDecoration(
              color: UtilColor.paymentSelectColor,
              borderRadius: BorderRadius.circular(10.r)),
          width: 327.w,
          height: 70.h,
          child: Padding(
            padding: EdgeInsets.only(left: 16.w,right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RalewayText(variable: "jonathon@emial.com", size: 12.r, weight: FontWeight.w600, colors: Colors.white),
                Image.asset("assets/email_blue.png",color: Colors.white,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}