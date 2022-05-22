import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../util/util_colors.dart';

class FavButton extends StatefulWidget {
  final Function()? onPressed;

  const FavButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.w,
      height: 35.h,
      child: FloatingActionButton(
        onPressed: widget.onPressed,
        child: const Icon(Icons.favorite),
        elevation: 0,
        backgroundColor: UtilColor.nextColor,
      ),
    );
  }
}
