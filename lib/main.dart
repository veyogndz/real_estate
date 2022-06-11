import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:real_estate/screens/notifications/notification_list.dart';
import 'package:real_estate/screens/onboarding/product_tour_1.dart';
import 'atomic_design/molecule/bottom_nav_bar.dart';
import 'controller/app_controller.dart';
import 'firebase_options.dart';

Future<void> _messageHandler(RemoteMessage message) async {
  print('background message ${message.notification!.body}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();

  FirebaseMessaging.onBackgroundMessage(_messageHandler);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppController appController = Get.put(AppController());
  late FirebaseMessaging messaging;


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   messaging = FirebaseMessaging.instance;
  //   messaging.getToken().then((value) {
  //     print("Mesaj içeriği " + value.toString());
  //   });
  //
  //   FirebaseMessaging.onMessage.listen((RemoteMessage event) {
  //     print("message recieved");
  //     print(event.notification!.body);
  //   });
  //   FirebaseMessaging.onMessageOpenedApp.listen((message) {
  //     print('Message clicked!');
  //   });
  //
  //   // FirebaseMessaging.onMessage.listen((RemoteMessage event) {
  //   //   print("message recieved");
  //   //   print(event.notification!.body);
  //   //   showDialog(
  //   //       context: context,
  //   //       builder: (BuildContext context) {
  //   //         return AlertDialog(
  //   //           title: Text("Notification"),
  //   //           content: Text(event.notification!.body!),
  //   //           actions: [
  //   //             TextButton(
  //   //               child: Text("Ok"),
  //   //               onPressed: () {
  //   //                 Navigator.of(context).pop();
  //   //               },
  //   //             )
  //   //           ],
  //   //         );
  //   //       });
  //   // });
  // }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (widget, context) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const BottomNavBar(),
        );
      },
    );
  }
}
