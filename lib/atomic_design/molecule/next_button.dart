import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/util/util_colors.dart';

class NextButton extends StatelessWidget {
  final String buttonName;
  final Function()? onPressed;

  const NextButton({Key? key, required this.onPressed , required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.w,
      height: 54.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonName.toString(),
          style: GoogleFonts.lato(
              fontSize: 16.h, color: Colors.white, fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
          primary: UtilColor.nextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
