import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  InputButton({required this.text, required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        // margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.08),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: TextField(
            onChanged: (newText) {},
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
