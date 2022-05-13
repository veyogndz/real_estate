import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:real_estate/models/house_model.dart';
import '../models/user_model.dart';

class AuthHelperUser {
  CollectionReference userReference =
      FirebaseFirestore.instance.collection("users");
  var getEmailContent = "";

  Future addUser(UserModel userModel, String uid) async {
    print("Add User" + uid);
    await userReference.doc(uid).set(userModel.toJson());
  }

  Future addHouseType(HouseModel houseModel, String uid) async {
    print("houseModel" + uid);
    await userReference.doc(uid).collection("favorites").add(houseModel.toJson());
  }

}
