import 'dart:async';
import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController to = Get.find();
  int counter = 0;
  Timer? timer;

  startTimer() {
    counter=30;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter > 0) {
        counter--;
        print(counter.toString());
        update();
      } else {
        timer.cancel();
        update();
      }
    });
  }


}
