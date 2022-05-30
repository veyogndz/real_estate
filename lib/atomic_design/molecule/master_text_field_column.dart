import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/util_colors.dart';

class MasterTextFieldColumn extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController numberController;
  final TextEditingController expirationDate;
  final TextEditingController cvv;
  final ValueChanged<String> nameField;
  final ValueChanged<String> cardNumbField;
  final ValueChanged<String> expirationField;

  const MasterTextFieldColumn({
    Key? key,
    required this.nameController,
    required this.expirationDate,
    required this.cvv,
    required this.numberController,
    required this.nameField,
    required this.cardNumbField,
    required this.expirationField,
  }) : super(key: key);

  @override
  _MasterTextFieldColumnState createState() => _MasterTextFieldColumnState();
}

class _MasterTextFieldColumnState extends State<MasterTextFieldColumn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 155.h,
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 9.5.w),
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 327.w,
                height: 70.h,
                child: TextFormField(
                  controller: widget.nameController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.r),
                    border: InputBorder.none,
                    suffixIcon: Image.asset("assets/profile.png"),
                  ),
                  onChanged: widget.nameField,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 10,
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.only(top: 9.5.w),
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 327.w,
                height: 70.h,
                child: TextFormField(
                  controller: widget.numberController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.r),
                    border: InputBorder.none,
                    suffixIcon: Image.asset("assets/wallet.png"),
                  ),
                  maxLength: 16,
                  onChanged: widget.cardNumbField,
                  keyboardType: TextInputType.number,
                ),

              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 9.5.w),
                    decoration: BoxDecoration(
                        color: UtilColor.gfButton,
                        borderRadius: BorderRadius.circular(10.r)),
                    width: 158.5.w,
                    height: 70.h,
                    child: TextFormField(
                      controller: widget.expirationDate,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12.r),
                        border: InputBorder.none,
                        suffixIcon: Image.asset("assets/calendar.png"),
                      ),
                      onTap: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2022, 25),
                            maxTime: DateTime(2032, 12), onChanged: (date) {
                          String month = date.month.toString();
                          String year = date.year.toString();
                          widget.expirationDate.text = "$month/$year";
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.tr);
                      },
                      onChanged: widget.expirationField,
                      keyboardType: TextInputType.none,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 9.5.w),
                    decoration: BoxDecoration(
                        color: UtilColor.gfButton,
                        borderRadius: BorderRadius.circular(10.r)),
                    width: 158.5.w,
                    height: 70.h,
                    child: TextFormField(
                      controller: widget.cvv,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12.r),
                        border: InputBorder.none,
                        hintText: "CVV",
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 12.r, color: UtilColor.softGrey),
                        prefixIcon: Image.asset("assets/wallet.png"),
                      ),
                      maxLength: 3,
                      onTap: () {
                        setState(() {});
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
