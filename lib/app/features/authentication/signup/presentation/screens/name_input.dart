import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:xafe_challenge/app/core/widgets/action_button.dart';
import 'package:provider/provider.dart';
import 'package:xafe_challenge/app/features/authentication/signup/data/user_data.dart';
import 'package:xafe_challenge/app/features/authentication/signup/presentation/screens/email_input.dart';
import 'package:xafe_challenge/app/features/authentication/signup/presentation/widgets/signUpDetails.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Euclid Circular',
                  ),
                ),
              ],
            ),
            SignUpDetails(
              text: "What's your name?",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                onChanged: (newText) {
                  Provider.of<UserData>(context, listen: false)
                      .nameInput(newText);
                },
                keyboardType: TextInputType.name,
                autofocus: true,
                decoration: InputDecoration.collapsed(
                  hintText: 'Enter your first name and last name',
                ),
              ),
            ),
            SizedBox(
              height: _keyboardIsVisible()
                  ? MediaQuery.of(context).size.height * 0.27
                  : MediaQuery.of(context).size.height * 0.6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: FAProgressBar(
                currentValue: 25,
                progressColor: Colors.black,
                size: 12.0,
                backgroundColor: Colors.black12,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ActionButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SignUpScreen2(),
                ),
              ),
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
