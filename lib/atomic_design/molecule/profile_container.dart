import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/util/util_colors.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
              color: UtilColor.softGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(100.r)),
          child: Image.asset("assets/person.png"),
        ),
        Padding(
          padding: EdgeInsets.only(left: 70.w, top: 62.h),
          child: SizedBox(
              width: 30.w,
              height: 30.h,
              child: FloatingActionButton(
                onPressed: () {},
                elevation: 0,
                backgroundColor: UtilColor.greyDark,
                child: Image.asset("assets/pencil.png"),
              )),
        ),
      ],
    );
  }
}
