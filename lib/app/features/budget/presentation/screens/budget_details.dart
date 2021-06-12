import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/budget/data/list_grid.dart';
import 'package:xafe_challenge/app/features/budget/presentation/widgets/budget_details.dart';
import 'package:xafe_challenge/app/features/budget/presentation/widgets/budget_row.dart';

class Budget extends StatelessWidget {
  const Budget({Key? key}) : super(key: key);

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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      'Groceries',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Euclid Circular',
                          fontSize: 24.0),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BudgetRow(),
            ],
          ),
          Positioned(
            bottom: 0.0,
            child: BudgetDetails(),
          ),
        ],
      ),
    );
  }
}
