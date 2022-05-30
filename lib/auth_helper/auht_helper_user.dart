import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:real_estate/controller/app_controller.dart';
import '../models/estate_model.dart';
import '../models/payment_model.dart';
import '../models/user_model.dart';

class AuthHelperUser {
  CollectionReference userReference =
      FirebaseFirestore.instance.collection("users");
  var getEmailContent = "";

  Future addUser(UserModel userModel, String uid) async {
    print("Add User" + uid);
    await userReference.doc(uid).set(userModel.toJson());
  }

  Future updateHouseType(String uid, List<String> houseType) async {
    await userReference
        .doc(uid)
        .update({"houseType": houseType})
        .then((value) => debugPrint("Update succeed"))
        .catchError((error) => debugPrint("Fail  $error"));
    SetOptions(merge: true);
  }

  Future updatePaymentMethod(
      String uid, List<PaymentModel> paymentModel) async {
    await userReference
        .doc(uid)
        .update({"paymentModel": paymentModel.map((e) => e.toJson()).toList()})
        .then((value) => debugPrint("Update succeed"))
        .catchError((error) => debugPrint("Fail  $error"));
    SetOptions(merge: true);
  }

  Future updateMobileNumber(String uid, String mobileNumber) async {
    await userReference
        .doc(uid)
        .update({"mobileNumber": mobileNumber})
        .then((value) => debugPrint("Update succeed"))
        .catchError((error) => debugPrint("Fail  $error"));
    SetOptions(merge: true);
  }

  Future addEstate(EstateModel estateModel, String uid) async {
    FirebaseFirestore.instance
        .collection("estateModel")
        .doc(uid)
        .set(estateModel.toJson());
  }
}
/*
   await userReference
        .doc(uid)
        .collection("users")
        .add(AppController.to.allModel.toJson());
  }
 */
