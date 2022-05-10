import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LongTextButton extends StatelessWidget {
  final String variable;
  final String variable2;
  final Color color;
  final Color color2;
  final double fontSize;
  final FontWeight fontWeight;
  final FontWeight fontWeight2;
  final Function()? onPressed;

  const LongTextButton(
      {Key? key,
        required this.variable,
        required this.color,
        required this.color2,
        required this.variable2,
        required this.fontSize,
        required this.onPressed,
        required this.fontWeight,
        required this.fontWeight2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            variable.toString(),
            style: GoogleFonts.raleway(
                color: color,
                fontSize: 12.r,
              fontWeight: fontWeight
            ),
          ),
          Text(
            variable2.toString(),
            style: GoogleFonts.raleway(
              color: color2,
              fontSize: 12.r,
              fontWeight: fontWeight2
            )
          )
        ],
      ),
    );
  }
}
