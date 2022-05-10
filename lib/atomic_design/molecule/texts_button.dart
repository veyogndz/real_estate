import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/util/util_colors.dart';

class TextsButton extends StatelessWidget {
  final String variable;
  final Function()? onPressed;

  const TextsButton(
      {Key? key, required this.variable, required this.onPressed,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      child: Text(
        variable,
        style: GoogleFonts.raleway(
            fontSize: 12.r,
            fontWeight: FontWeight.w600,
            color: UtilColor.textColor),
      ),
    );
  }
}
