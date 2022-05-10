import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/util/util_colors.dart';

class UsedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget stepChild;

  const UsedButton({Key? key, required this.onPressed, required this.stepChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 278.w,
      height: 63.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: stepChild,
        style: ElevatedButton.styleFrom(
          primary: UtilColor.nextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r)
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
