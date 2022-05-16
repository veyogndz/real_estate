import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/util_colors.dart';

class PaypalTextFieldColumn extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;

  const PaypalTextFieldColumn({
    Key? key,
    required this.nameController,
    required this.emailController,
  }) : super(key: key);

  @override
  _PaypalTextFieldColumnState createState() => _PaypalTextFieldColumnState();
}

class _PaypalTextFieldColumnState extends State<PaypalTextFieldColumn> {

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
            controller: widget.emailController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12.r),
              border: InputBorder.none,
              suffixIcon: Image.asset("assets/email_blue.png"),
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
