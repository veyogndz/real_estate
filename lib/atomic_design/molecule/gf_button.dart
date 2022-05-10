import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GfButton extends StatelessWidget {
  final Function()? onPressed;
  final String variable;

  const GfButton({
    Key? key,
    required this.onPressed,
    required this.variable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.5.w,
      height: 70.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Image.asset(
          variable.toString(),
          width: 25.w,
          height: 25.h,
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r),
            ),
            elevation: 0),
      ),
    );
  }
}
