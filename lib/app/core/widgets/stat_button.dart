import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

// ignore: must_be_immutable
class StatButton extends StatelessWidget {
  StatButton({Key? key, required this.currentValue}) : super(key: key);

  int currentValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 150.0,
        child: FAProgressBar(
          verticalDirection: VerticalDirection.up,
          direction: Axis.vertical,
          currentValue: currentValue,
          progressColor: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}
