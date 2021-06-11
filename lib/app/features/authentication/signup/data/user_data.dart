import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/authentication/signup/presentation/screens/email_verification.dart';

class UserData extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  String name = '';
  String email = '';
  String password = '';
  String code = '';

  BuildContext get context => context;

  void nameInput(String newString) {
    name = newString;
    notifyListeners();
  }

  void emailInput(String newString) {
    email = newString;
    notifyListeners();
  }

  void passwordInput(String newString) {
    password = newString;
    notifyListeners();
  }

  void codeInput(String newString) {
    code = newString;
    notifyListeners();
  }

  signUp() async {
    try {
      print(email);
      print(password);
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(newUser);
      _fireStore.collection('user').add({
        'fullName': name,
        'email': email,
      });
      //TODO: If successful return the home screen
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      if (e.code == 'email-already-in-use') {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text('User Already Registered'),
            content: Text('Kindly login to your account'),
            actions: [
              TextButton(onPressed: () {}, child: Text('Okay')),
            ],
          ),
        );
        print('User already registered');
      }
    } catch (e) {
      print(e);
    }
  }
}
