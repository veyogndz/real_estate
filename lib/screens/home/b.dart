import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/auth_helper/auht_helper_user.dart';
import 'package:real_estate/models/estate_model.dart';

class B extends StatefulWidget {
  const B({Key? key}) : super(key: key);

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  List<String> picture = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: controller1,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), // icon alır
                hintText: 'houseType', // küçülen yazı
                labelText: 'Dob',
              ),

            ),
            TextFormField(
              controller: controller2,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), // icon alır
                hintText: 'picture', // küçülen yazı
                labelText: 'Dob',
              ),
            ),
            TextFormField(
              controller: controller3,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), // icon alır
                hintText: 'price', // küçülen yazı
                labelText: 'Dob',
              ),
            ),
            TextFormField(
              controller: controller4,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today), // icon alır
                hintText: 'score', // küçülen yazı
                labelText: 'Dob',
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            ElevatedButton(
              onPressed: () {
                EstateModel estateModel = EstateModel(
                    houseType: controller1.text,
                    price: controller3.text,
                    score: controller4.text,
                    pictures: []);
                AuthHelperUser().addEstate(
                    estateModel, FirebaseAuth.instance.currentUser!.uid);
              },
              child: const Text("3-2-1 kayıt."),
            )
          ],
        ),
      ),
    );
  }
}
