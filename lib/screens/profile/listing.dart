import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/screens/add_estate/form_detail.dart';

import '../../atomic_design/atom/lato_text.dart';
import '../../util/util_colors.dart';

class Listing extends StatefulWidget {
  const Listing({Key? key}) : super(key: key);

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  int variable = 12 * 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                LatoText(
                    variable: variable.toString(),
                    size: 18.r,
                    weight: FontWeight.w700,
                    colors: UtilColor.greyDark),
                LatoText(
                    variable: " listing",
                    size: 18.r,
                    weight: FontWeight.w500,
                    colors: UtilColor.greyDark),
              ],
            ),
            SizedBox(
              width: 106.w,
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 52.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
                        color: UtilColor.gfButton,
                      ),
                      child: Image.asset("assets/active.png")),
                  FloatingActionButton(
                    onPressed: () {
                    Get.to(const FormDetail());
                    },
                    elevation: 0,
                    backgroundColor: UtilColor.greyDark,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
