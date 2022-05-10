import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/util/util_colors.dart';

           class TooglesButton extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;

  const TooglesButton({
    Key? key,
    required this.values,
    required this.onToggleCallback,
    this.backgroundColor = const Color(0xFFe7e7e8),
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
  }) : super(key: key);

  @override
  State<TooglesButton> createState() => _TooglesButtonState();
}

class _TooglesButtonState extends State<TooglesButton> {
  bool initialPosition = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            initialPosition = !initialPosition;
            var index  = 0;
            if (!initialPosition) {
              index = 1;
            }
            widget.onToggleCallback(index);
            setState(() {});
          },
          child: Container(
            width: 327.w,
            height: 50.h,
            decoration: ShapeDecoration(
              color: widget.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                widget.values.length,
                (index) => Padding(
                  padding:EdgeInsets.only(left:8.w,right: 8.w),
                  child: Container(
                    decoration: BoxDecoration(
                     // color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.r)
                    ),
                    width: 146.w,
                    height: 32.h,
                    child: Center(
                      child: Text(
                        widget.values[index],
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 14.r,
                          fontWeight: FontWeight.bold,
                          color: UtilColor.softGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        AnimatedAlign(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate,
          alignment:
              initialPosition ? Alignment.centerLeft : Alignment.centerRight,
          child: Padding(
            padding:EdgeInsets.only(left: 8.w,right: 33.w,top: 9.h),
            child: Container(
              width: 146.w,
              height: 32.h,
              decoration: ShapeDecoration(
                color: widget.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              child: Text(
                initialPosition ? widget.values[0] : widget.values[1],
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 14.r,
                  color: widget.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }
}
