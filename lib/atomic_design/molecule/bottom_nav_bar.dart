import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/screens/home/home.dart';
import 'package:real_estate/screens/profile/profile_transaction.dart';
import 'package:real_estate/util/util_colors.dart';

import '../../screens/search/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Search(),
    const Home(),
    const ProfileTransaction(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              pageIndex == 0
                  ? IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home_filled,
                        color: UtilColor.greyDark,
                        size: 35.sp,
                      ),
                    )
                  : IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home_filled,
                        color: UtilColor.greyDark.withOpacity(0.4),
                        size: 35.sp,
                      ),
                    ),
              pageIndex == 0
                  ? Padding(
                    padding: EdgeInsets.only(left:4.w),
                    child: Icon(
                        Icons.radio_button_on_outlined,
                        size: 10.r,
                        color: UtilColor.greyDark,
                      ),
                  )
                  : const SizedBox()
            ],
          ),
          Column(
            children: [
              pageIndex == 1
                  ? IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: Icon(
                        Icons.search,
                        color: UtilColor.greyDark,
                        size: 35.sp,
                      ))
                  : IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: Icon(
                        Icons.search,
                        color: UtilColor.greyDark.withOpacity(0.4),
                        size: 35.sp,
                      )),
              pageIndex == 1
                  ? Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Icon(
                        Icons.radio_button_on_outlined,
                        size: 8.sp,
                        color: UtilColor.greyDark,
                      ),
                  )
                  : const SizedBox()
            ],
          ),
          Column(
            children: [
            pageIndex == 2 ? IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: UtilColor.greyDark,
                  size: 35.sp,
                ),
              ) : IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                color: UtilColor.greyDark.withOpacity(0.4),
                size: 35.sp,
              ),
            ),
              pageIndex == 2
                  ? Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Icon(
                        Icons.radio_button_on_outlined,
                        size: 8.sp,
                      ),
                  )
                  : const SizedBox()
            ],
          ),
          Column(
            children: [
              pageIndex == 3 ? IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: UtilColor.greyDark,
                  size: 35.sp,
                ),
              ) : IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.person_outline,
                  color: UtilColor.greyDark.withOpacity(0.4),
                  size: 35.sp,
                ),
              ),
              pageIndex == 3
                  ? Icon(
                      Icons.radio_button_on_outlined,
                      size: 8.sp,
                    )
                  : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}
