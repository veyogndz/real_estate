import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/atom/raleway_text.dart';
import 'package:real_estate/screens/login/login_form.dart';
import '../../atomic_design/molecule/back_button.dart';
import '../../atomic_design/molecule/skip_button.dart';
import '../../util/util_colors.dart';

class LocationEmpty extends StatefulWidget {
  const LocationEmpty({Key? key}) : super(key: key);

  @override
  State<LocationEmpty> createState() => _LocationEmptyState();
}

class _LocationEmptyState extends State<LocationEmpty> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(40.015137, 28.979530), zoom: 11.5);
  GoogleMapController? _googleMapController;
  BitmapDescriptor? customMarker;
  List<Marker> allMarkers = [];

  getCustomMarker() async {
    customMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, 'assets/icon.png');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Geolocator.requestPermission();
    getCustomMarker();
  }

  @override
  void dispose() {
    _googleMapController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtons(
                    onPress: () {
                      Get.back();
                    },
                    color: UtilColor.gfButton,
                    stepChild: Image.asset(
                      "assets/arrow_back.png",
                      width: 16.w,
                      height: 15.56.h,
                    ),
                  ),
                  SkipButton(onPressed: () {
                    Get.to(const LoginForm());
                  })
                ],
              ),
              SizedBox(height: 51.h),
              Row(
                children: [
                  LatoText(
                      variable: "Add your ",
                      size: 25.r,
                      weight: FontWeight.w500,
                      colors: UtilColor.greyDark),
                  LatoText(
                      variable: "location ",
                      size: 25.r,
                      weight: FontWeight.w700,
                      colors: UtilColor.greyDark),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                "You can edit this later on your account setting.",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.r,
                ),
              ),
              SizedBox(height: 33.h),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    width: 327.w,
                    height: 300.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.r),
                      child: GoogleMap(
                          markers: Set.from(allMarkers),
                          myLocationButtonEnabled: false,
                          zoomControlsEnabled: false,
                          initialCameraPosition: _initialCameraPosition,
                          onMapCreated: (GoogleMapController control) {
                            setState(() {
                              allMarkers.add(Marker(
                                  icon: customMarker!,
                                  markerId: MarkerId('myMarker'),
                                  draggable: false,
                                  onTap: () {
                                    print('Marker Tapped');
                                  },
                                  position: LatLng(41.015137, 28.979530)));
                            });
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 250.h),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 0),
                      child: SizedBox(
                        width: 327.w,
                        height: 50.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "select on map",
                            style: GoogleFonts.raleway(
                                color: UtilColor.greyDark, fontSize: 12.r),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: UtilColor.containerColor.withOpacity(0.8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            elevation: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 34.h),
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: 327.w,
                  height: 70.h,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/location.png"),
                      SizedBox(width: 10.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RalewayText(
                              variable: "Location detail",
                              size: 12.r,
                              weight: FontWeight.w400,
                              colors: UtilColor.softGrey),
                          SizedBox(width: 158.h),
                          Icon(Icons.arrow_forward_ios_outlined,size: 20.r,color: UtilColor.dividerColor,)
                        ],
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: UtilColor.containerColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  elevation: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
