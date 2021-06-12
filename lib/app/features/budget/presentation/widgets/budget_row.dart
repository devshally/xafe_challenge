import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class BudgetRow extends StatelessWidget {
  const BudgetRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$ 200.00',
                  style: TextStyle(
                    fontFamily: 'Euclid Circular',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    ' spent',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular',
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: FAProgressBar(
                  progressColor: Colors.white,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  size: 15.0,
                  currentValue: 50,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 04.0, horizontal: 6.0),
                  child: Text(
                    '\$1000 ' + '/month',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
