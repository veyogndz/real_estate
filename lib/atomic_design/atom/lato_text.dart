import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LatoText extends StatelessWidget {
  final String variable;
  final double? size;
  final FontWeight? weight;
  final Color? colors;

  const LatoText({
    Key? key,
    required this.variable,
    required this.size,
    required this.weight,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      variable.toString(),
      style: GoogleFonts.lato(
        fontSize: size,
        fontWeight: weight,
        color: colors,
      ),
    );
  }
}
