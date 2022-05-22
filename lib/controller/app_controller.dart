import 'dart:async';
import 'package:get/get.dart';
import 'package:real_estate/models/payment_model.dart';

class AppController extends GetxController {
  static AppController to = Get.find();
  int counter = 0;
  Timer? timer;
  List<String> houseType = [];
  List<PaymentModel> stillPaymentModel = List.filled(
      1,
      PaymentModel(
        name: "asd",
        email: "",
        cardNumber: "",
        expirationDate: "",
        cvv: "",
      ),
      growable: true
  );

  startTimer() {
    counter = 30;
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