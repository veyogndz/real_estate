import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/util/util_colors.dart';

class SkipButton extends StatelessWidget {
  final Function()? onPressed;

  const SkipButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.w,
      height: 38.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r)),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text("Skip",
            style: GoogleFonts.montserrat(
                fontSize: 12.r,
                color: Colors.black,
                fontWeight: FontWeight.w400)),
        style: ElevatedButton.styleFrom(
          primary: UtilColor.skipButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.r),
          ),
          elevation: 0
        ),
      ),
    );
  }
}
