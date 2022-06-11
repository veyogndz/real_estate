import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/util/util_colors.dart';
class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  int variable = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                LatoText(variable: variable.toString(), size: 18.r, weight: FontWeight.w700, colors: UtilColor.greyDark),
                LatoText(variable: " transactions", size: 18.r, weight: FontWeight.w500, colors: UtilColor.greyDark),
              ],
            ),
            Container(
              width: 52.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: UtilColor.gfButton,
              ),
              child: Image.asset("assets/active.png")
            ),

          ],
        )
      ],
    );
  }
}
