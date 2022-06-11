import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:real_estate/models/payment_model.dart';

class AppController extends GetxController {
  static AppController to = Get.find();
  int counter = 0;
  Timer? timer;
  List<String> houseType = [];
  String email ="";
  String userName ="";
  int? currentState = 9;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

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

  getEmail() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      email = value.data()!['email'];
      update();
      print("email : $email");
    });
  }
  getUserName() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
        userName = value.data()!['userName'];
        update();
        print("userName : $userName");
    });
  }
  addPhotos() async {
    print('fonksiyon çalıstı');
    final ImagePicker _picker = ImagePicker();

    XFile? _file = await _picker.pickImage(source: ImageSource.gallery);
    print('image secildi ');
    if (_file == null) {
      print('image null ');
    }
    var _profileRef =
    FirebaseStorage.instance.ref('users/profil_resimleri/user_id');
    print(_file?.name.toString());
    var _task = _profileRef.putFile(File(_file!.path));
    debugPrint('yükleme başlatılacak');
    _task.whenComplete(() async {
      var _url = await _profileRef.getDownloadURL();
      debugPrint('yükleme bitti');
      fireStore
          .doc('users/${FirebaseAuth.instance.currentUser!.uid}')
          .set({'profile_pic': _url.toString()}, SetOptions(merge: true));
      debugPrint(_url);
    });
  }
}