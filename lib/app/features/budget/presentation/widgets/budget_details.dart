import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/core/data.dart';
import 'package:xafe_challenge/app/features/expenses/data/models/data.dart';
import 'package:xafe_challenge/app/features/expenses/data/models/expense.dart';

class BudgetDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Padding _buildRecentExpenses(BuildContext, Expense expense) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      expense.emoji,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          expense.name,
                          style: TextStyle(
                            fontFamily: 'Euclid Circular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          expense.date,
                          style: TextStyle(
                            fontFamily: 'Euclid Circular',
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      expense.amount,
                      style: TextStyle(
                        fontFamily: 'Euclid Circular',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: ListView.separated(
        itemCount: transactions.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          Expense expense = expenses[index];
          return _buildRecentExpenses(context, expense);
        },
      ),
    );
  }
}
