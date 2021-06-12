import 'package:flutter/material.dart';

class TimelineSelector extends StatelessWidget {
  const TimelineSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue.withOpacity(0.3),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'This week',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Euclid Circular',
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
