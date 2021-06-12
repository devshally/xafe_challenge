import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/core/widgets/action_button.dart';
import 'package:xafe_challenge/app/features/categories/presentation/widgets/category_input.dart';

class AddCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Add a spending category',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Euclid Circular',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            InputButton(
              text: 'Enter category name',
              suffixIcon: null,
            ),
            InputButton(
              text: 'Choose category emoji',
              suffixIcon: Icon(Icons.arrow_drop_down),
            ),
            SizedBox(
              height: _keyboardIsVisible()
                  ? MediaQuery.of(context).size.height * 0.15
                  : MediaQuery.of(context).size.height * 0.5,
            ),
            ActionButton(text: 'Create Category', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
