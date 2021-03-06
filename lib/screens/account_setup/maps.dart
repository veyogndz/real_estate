import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../util/util_colors.dart';
import 'choose_location.dart';

class Maps extends StatefulWidget {
  final bool isShould;

  const Maps({Key? key,required this.isShould}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

double _originLatitude = 34.4382955939104;
double _originLongitude = 127.141358956227965;
double _destLatitude = 3788.422733197746986;
double _destLongitude =  27.129490953156576;

class _MapsState extends State<Maps> {
  PolylinePoints polylinePoints = PolylinePoints();
  Map<PolylineId, Polyline> polylines = {};
  MapType _currentMapType = MapType.normal;
  GoogleMapController? _controller;
  static final CameraPosition _initalCameraPosition = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 15,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getPolyline();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: GoogleMap(
              polylines: Set<Polyline>.of(polylines.values),
              markers: _cretaeMarker(),
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: _initalCameraPosition,
              tiltGesturesEnabled: true,
              compassEnabled: true,
              scrollGesturesEnabled: true,
              zoomGesturesEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
            ),
          ),
          widget.isShould ?
          Padding(
            padding: EdgeInsets.only(top: 310.h),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 0),
              child: SizedBox(
                width: 327.w,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const ChooseLocation());
                    //goToLoc();
                  },
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
          ) : Container()
        ],
      ),
    );
  }

  Set<Marker> _cretaeMarker() {
    return <Marker>{
      Marker(
          infoWindow: const InfoWindow(title: "Kordon Alsancak"),
          markerId: const MarkerId("asdasd"),
          position: _initalCameraPosition.target,
          icon:
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan)),
      Marker(
          infoWindow: const InfoWindow(title: "Ev"),
          markerId: const MarkerId("asdasdd"),
          position: const LatLng(38.392300, 27.047840),
          icon:
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure)),
      Marker(
          infoWindow: const InfoWindow(title: "Konak Pier"),
          markerId: const MarkerId("asdsasdd"),
          position: const LatLng(38.422733197746986, 27.129490953156576),
          icon:
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure)),
    };
  }
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  goToLoc() {
    _controller!
        .animateCamera(CameraUpdate.newLatLng(const LatLng(38.392300, 27.047840)));
  }

  void _getPolyline() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "API ANAHTARIN",
      PointLatLng(_originLatitude, _originLongitude),
      PointLatLng(_destLatitude, _destLongitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print("Hata" + result.errorMessage.toString());
    }
    _addPolyLine(polylineCoordinates);
  }

  _addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = const PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.pink,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }
}