import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/util_colors.dart';

class MyTextField extends StatefulWidget {
  final String variable;
  final String textVar;

  const MyTextField({Key? key, required this.variable,required this.textVar}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController controller = TextEditingController();
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 9.5.w),
      decoration: BoxDecoration(
          color: UtilColor.gfButton, borderRadius: BorderRadius.circular(10.r)),
      width: 327.w,
      height: 70.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: isEmpty == true ? "" : widget.textVar,
            prefixIcon:
                isEmpty == false ? Image.asset(widget.variable.toString()) : null,
            suffixIcon:
                isEmpty == true ? Image.asset(widget.variable) : null),
        onTap: () {
          isEmpty = true;
          setState(() {});
        },
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
