import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleListview extends StatefulWidget {
  final Image bigPicture;
  final String houseContent;
  final String price;

  const ToggleListview({
    Key? key,
    required this.bigPicture,
    required this.houseContent,
    required this.price,
  }) : super(key: key);

  @override
  State<ToggleListview> createState() => _ToggleListviewState();
}

class _ToggleListviewState extends State<ToggleListview> {
  final Stream<QuerySnapshot> usersStream =
      FirebaseFirestore.instance.collection('estateModel').snapshots();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      height: 249.h,
      child: StreamBuilder<QuerySnapshot>(
        stream: usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              return ListTile(
                title: Text(data['houseType']),
                subtitle: Text(data['price']),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
