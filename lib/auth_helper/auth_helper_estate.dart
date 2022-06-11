import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/estate_model.dart';

class AuthHelperEstate{
  CollectionReference userReference =
    FirebaseFirestore.instance.collection("estateModel");

  Future addEstate(EstateModel estateModel, String uid) async {
    FirebaseFirestore.instance
        .collection("estateModel")
        .doc(uid)
        .set(estateModel.toJson());
  }
}