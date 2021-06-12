import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xafe_challenge/app/features/budget/presentation/screens/add_budget.dart';
import 'package:xafe_challenge/app/features/categories/presentation/screens/add_category.dart';
import 'package:xafe_challenge/app/features/expenses/data/presentation/screens/add_expense.dart';

class BottomSheetMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddExpense(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.database,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Add an Expense',
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddBudget(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: FaIcon(
                          FontAwesomeIcons.exchangeAlt,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Create a budget'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddCategory(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.trashAlt,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Add a spending category',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
