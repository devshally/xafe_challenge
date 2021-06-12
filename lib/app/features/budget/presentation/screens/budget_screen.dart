import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/budget/data/list_grid.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF3D74FF),
                  Color(0xFF094DFF),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Text(
                        '💻 ',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        'Budgets',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Euclid Circular',
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(10.0),
                  children: gridButtons,
                  shrinkWrap: true,
                  childAspectRatio: 1.5,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 120.0,
                    width: 190.0,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
