import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/util/util_colors.dart';

class NotificationsAll extends StatefulWidget {
  const NotificationsAll({Key? key}) : super(key: key);

  @override
  State<NotificationsAll> createState() => _NotificationsAllState();
}

class _NotificationsAllState extends State<NotificationsAll> {

  bool isAll =false;
  bool isReview = false;
  bool isSold = false;
  bool isHouse = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.w),
      child: SizedBox(
        width: 319.w,
        height: 47.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Container(
                width: 62.w,
                height: 47.h,
                decoration: BoxDecoration(
                  color: isAll ? UtilColor.softGrey.withOpacity(0.1):UtilColor.greyDark,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: RalewayText(
                    variable: "All",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors:  isAll ? Colors.black : Colors.white,
                  ),
                ),
              ),
              onTap: (){
                if(isAll == false){
                  isAll=true;
                  setState(() {});
                }else{
                  isAll=false;
                  setState(() {});
                }
              },
            ),
            GestureDetector(
              child: Container(
                width: 62.w,
                height: 47.h,
                decoration: BoxDecoration(
                  color: isReview ? UtilColor.softGrey.withOpacity(0.1):UtilColor.greyDark,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: RalewayText(
                    variable: "Review",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors: isReview ? Colors.black : Colors.white,
                  ),
                ),
              ),
              onTap: (){
                if(isReview == false){
                  isReview=true;
                  setState(() {});
                }else{
                  isReview=false;
                  setState(() {});
                }
              },
            ),
            GestureDetector(
              child: Container(
                width: 62.w,
                height: 47.h,
                decoration: BoxDecoration(
                  color: isSold ? UtilColor.softGrey.withOpacity(0.1):UtilColor.greyDark,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: RalewayText(
                    variable: "Sold",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors: isSold ? Colors.black : Colors.white,
                  ),
                ),
              ),
              onTap: (){
                if(isSold == false){
                  isSold=true;
                  setState(() {});
                }else{
                  isSold=false;
                  setState(() {});
                }
              },
            ),
            GestureDetector(
              child: Container(
                width: 62.w,
                height: 47.h,
                decoration: BoxDecoration(
                  color: isHouse ? UtilColor.softGrey.withOpacity(0.1):UtilColor.greyDark,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: RalewayText(
                    variable: "House",
                    size: 10.r,
                    weight: FontWeight.w500,
                    colors: isHouse ? Colors.black : Colors.white,
                  ),
                ),
              ),
              onTap: (){
                if(isHouse == false){
                  isHouse=true;
                  setState(() {});
                }else{
                  isHouse =false;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
