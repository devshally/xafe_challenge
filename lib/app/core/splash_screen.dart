import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/core/widgets/action_button.dart';
import 'package:xafe_challenge/app/features/authentication/signin/presentation/screens/sign_in.dart';
import 'package:xafe_challenge/app/features/authentication/signup/presentation/screens/name_input.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF100628),
      body: Padding(
        padding: EdgeInsets.only(bottom: 90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'xafe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Euclid Circular',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Smart Budgeting',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                decoration: TextDecoration.none,
                fontFamily: 'Euclid Circular',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: ActionButton(
                text: 'Login',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignInScreen(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: RichText(
                text: TextSpan(
                  text: 'New here? ',
                  style: TextStyle(
                    fontFamily: 'Euclid Circular',
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SignUpScreen(),
                              ),
                            ),
                      text: 'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Euclid Circular',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "By continuing, you agree to Xafe's terms of use\nand privacy policy",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Euclid Circular',
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
