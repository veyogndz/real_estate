import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DmSansText extends StatelessWidget {
  final String variable;
  final double? size;
  final FontWeight? weight;
  final Color? colors;
  const DmSansText({Key? key,
    required this.variable,
    required this.size,
    required this.weight,
    required this.colors,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      variable.toString(),
      style: GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: weight,
        color: colors,
      ),
    );
  }
}
