import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:xafe_challenge/app/features/budget/presentation/screens/budget_details.dart';

class GridButton extends StatelessWidget {
  final String text;
  final String amount;
  final Color color;
  final Color shade;
  final int currentValue;

  const GridButton(
      {Key? key,
      required this.text,
      required this.amount,
      required this.color,
      required this.shade,
      required this.currentValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Budget(),
          ),
        );
      },
      child: Container(
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Euclid Circular',
                  color: color,
                  fontSize: 18.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '\$${amount}/ ',
                  style: TextStyle(
                    fontFamily: 'Euclid Circular',
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: 'month',
                      style: TextStyle(
                        fontFamily: 'Euclid Circular',
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: 150.0,
                  child: FAProgressBar(
                    currentValue: 70,
                    size: 10,
                    progressColor: color,
                    backgroundColor: shade,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
