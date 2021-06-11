import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:provider/provider.dart';
import 'package:xafe_challenge/app/core/widgets/action_button.dart';
import 'package:xafe_challenge/app/features/authentication/signup/data/user_data.dart';
import 'package:xafe_challenge/app/features/authentication/signup/presentation/screens/email_verification.dart';
import 'package:xafe_challenge/app/features/authentication/signup/presentation/widgets/signUpDetails.dart';

class SignUpScreen3 extends StatelessWidget {
  const SignUpScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    bool obscured = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                text: "Add a Password",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  onChanged: (newText) {
                    Provider.of<UserData>(context, listen: false)
                        .passwordInput(newText);
                  },
                  keyboardType: TextInputType.name,
                  obscureText: obscured,
                  autofocus: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Enter password',
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  //TODO: setstate might need to be called to invert obscured
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey.shade100,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 04.0, horizontal: 6.0),
                      child: Text(
                        'show password',
                        style: TextStyle(
                          fontFamily: 'Euclid Circular',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _keyboardIsVisible()
                    ? MediaQuery.of(context).size.height * 0.28
                    : MediaQuery.of(context).size.height * 0.56,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: FAProgressBar(
                  currentValue: 75,
                  progressColor: Colors.black,
                  size: 12.0,
                  backgroundColor: Colors.black12,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ActionButton(
                onTap: () async {
                  Provider.of<UserData>(context, listen: false).signUp();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SignUpScreen4()),
                  );
                },
                text: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
