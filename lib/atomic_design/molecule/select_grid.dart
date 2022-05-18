import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/util_colors.dart';
import '../atom/lato_text.dart';

class SelectGrid extends StatefulWidget {
  final String variablePic;
  final String variableText;
  final Function(bool val) onPress;
  const SelectGrid({
    Key? key,
    required this.variablePic,
    required this.variableText,
    required this.onPress,
  }) : super(key: key);

  @override
  State<SelectGrid> createState() => _SelectGridState();
}

class _SelectGridState extends State<SelectGrid> {
  bool isCheck = true;
  bool isCheckContainer = true;
  bool isContainer = true;
  bool isText = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8.r),
        width: 160.w,
        height: 212.h,
        decoration: BoxDecoration(
            color: isContainer
                ? UtilColor.gfButton
                : !isContainer
                    ? UtilColor.greyDark
                    : Colors.white,
            borderRadius: BorderRadius.circular(25.r)),
        child: Stack(
          children: [
            Image.asset(widget.variablePic.toString()),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 8.h),
              child: Container(
                width: 25.w,
                height: 25.h,
                decoration: BoxDecoration(
                    color: isCheckContainer
                        ? Colors.white
                        : !isCheckContainer
                            ? UtilColor.nextColor
                            : Colors.blue,
                    borderRadius: BorderRadius.circular(25.r)),
                child: Icon(Icons.check,
                    color: isCheck
                        ? UtilColor.greyDark
                        : !isCheck
                            ? Colors.white
                            : Colors.blue,
                    size: 15.r),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(top: 160.h, left: 5.w),
              child: LatoText(
                  variable: widget.variableText,
                  size: 12.r,
                  weight: FontWeight.w700,
                  colors: isText
                      ? UtilColor.greyDark
                      : !isText
                      ? Colors.white
                      : Colors.blue,

              ),
            )
          ],
        ),
      ),
      onTap: () {
        if (isCheck == false && isCheckContainer == false && isContainer == false && isText == false) {
          isCheck = true;
          isCheckContainer = true;
          isContainer = true;
          isText= true;
          setState(() {});
        } else if (isCheck == true && isCheckContainer == true && isContainer == true && isText == true) {
          isCheck = false;
          isCheckContainer = false;
          isContainer = false;
          isText = false;
          setState(() {});
        }
        widget.onPress(isCheck);
      },
    );
  }
}
