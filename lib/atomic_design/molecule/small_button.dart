import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/util_colors.dart';
import '../atom/raleway_text.dart';

class SmallButton extends StatefulWidget {
  final double realWidth;
  final String buttonContent;

  const SmallButton({
    Key? key,
    required this.realWidth,
    required this.buttonContent,
  }) : super(key: key);

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool isReview = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: widget.realWidth,
        height: 47.h,
        decoration: BoxDecoration(
          color: isReview
              ? UtilColor.softGrey.withOpacity(0.1)
              : UtilColor.greyDark,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: RalewayText(
            variable: widget.buttonContent,
            size: 10.r,
            weight: FontWeight.w500,
            colors: isReview ? Colors.black : Colors.white,
          ),
        ),
      ),
      onTap: () {
        if (isReview == false) {
          isReview = true;
          setState(() {});
        } else {
          isReview = false;
          setState(() {});
        }
      },
    );
  }
}
