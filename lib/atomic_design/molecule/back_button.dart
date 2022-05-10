import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtons extends StatelessWidget {
  final Function()? onPress;
  final Widget stepChild;
  final Color color;

  const BackButtons({
    Key? key,
    required this.onPress,
    required this.stepChild,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54.w,
      height: 54.h,
      child: ElevatedButton(
        onPressed: onPress,
        child: stepChild,
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            elevation: 0),
      ),
    );
  }
}
