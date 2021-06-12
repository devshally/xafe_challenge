import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/core/data.dart';
import 'package:xafe_challenge/app/core/models/recent_transactions.dart';

class SpendingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Padding _buildRecentTransactions(BuildContext, Transaction transaction) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  transaction.emoji,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  transaction.transaction,
                  style: TextStyle(
                    fontFamily: 'Euclid Circular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              transaction.amount,
              style: TextStyle(
                fontFamily: 'Euclid Circular',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
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
          Transaction transaction = transactions[index];
          return _buildRecentTransactions(context, transaction);
        },
      ),
    );
  }
}
