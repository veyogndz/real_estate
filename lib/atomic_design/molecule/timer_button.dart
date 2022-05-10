import 'package:flutter/material.dart';
import 'dart:async';

class TimerButton extends StatefulWidget {

   const TimerButton( {Key? key}) : super(key: key);

  @override
  _TimerButtonState createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton> {
  Timer? timer;
  int start = 10;

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 135.0,
      width: 135.0,
      child: ElevatedButton(
        onPressed: () {
          startTimer();
        },
        child: Text(
          "$start",
          style: const TextStyle(fontFamily: "Minim", fontSize: 50.0),
        ),
      ),
    );
  }
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }
}
