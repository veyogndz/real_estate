import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';

import '../../util/util_colors.dart';

class FeaturedButton extends StatefulWidget {
  const FeaturedButton({Key? key}) : super(key: key);

  @override
  _FeaturedButtonState createState() => _FeaturedButtonState();
}

class _FeaturedButtonState extends State<FeaturedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: RalewayText(variable: "Apartment", size: 8.r, weight: FontWeight.w500, colors: Colors.white),
      style: ElevatedButton.styleFrom(
        primary: UtilColor.greyDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}




