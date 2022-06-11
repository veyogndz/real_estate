import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LongToggleButton extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;

  const LongToggleButton({Key? key,
    required this.values,
    required this.onToggleCallback,
    this.backgroundColor = const Color(0xFFe7e7e8),
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
  }) : super(key: key);

  @override
  State<LongToggleButton> createState() => _LongToggleButtonState();
}

class _LongToggleButtonState extends State<LongToggleButton> {
  bool initialPosition = true;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      width: 327.w,
      height: 50.h,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              initialPosition = !initialPosition;
              var index = 0;
              if (!initialPosition) {
                index = 1;
              }
              widget.onToggleCallback(index);
              setState(() {});
            },
            child : Container(
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
                      padding:EdgeInsets.only(left: 48.w,right:48.w),
                      child:Text(widget.values[index])),
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
              padding: EdgeInsets.only(left:15.w,right: 15.w),
              child: Container(
                  width: 114.w,
                  height: 32.h,
                  decoration: ShapeDecoration(
                    color: widget.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child:Text(
                      initialPosition
                          ? widget.values[0]
                          : widget.values[1]
                  )

              ),
            ),
          ),
        ],
      ),
    );
  }
}


