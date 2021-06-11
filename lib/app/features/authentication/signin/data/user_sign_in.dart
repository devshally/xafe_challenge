import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/authentication/signup/data/user_data.dart';
import 'package:provider/provider.dart';

class SignIn extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  void emailLogin(String newString) {
    email = newString;
    notifyListeners();
  }

  void passwordDetails(String newString) {
    password = newString;
    notifyListeners();
  }

  signIn() async {
    final user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    print(user);
    //TODO: If successful return the home screen
  }
}
