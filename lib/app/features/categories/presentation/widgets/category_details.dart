import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/expenses/data/models/data.dart';
import 'package:xafe_challenge/app/features/expenses/data/models/expense.dart';

class CategoryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Padding _buildRecentExpenses(BuildContext, Expense categorySamples) {
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
                      categorySamples.emoji,
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
                          categorySamples.name,
                          style: TextStyle(
                            fontFamily: 'Euclid Circular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          categorySamples.date,
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
                    color: Colors.orange.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                    child: Text(
                      categorySamples.amount,
                      style: TextStyle(
                          fontFamily: 'Euclid Circular', color: Colors.orange),
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
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: ListView.separated(
        itemCount: categorySamples.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          Expense categorySample = categorySamples[index];
          return _buildRecentExpenses(context, categorySample);
        },
      ),
    );
  }
}
