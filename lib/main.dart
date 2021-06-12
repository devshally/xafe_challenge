import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xafe_challenge/app/core/models/recent_transactions.dart';
import 'package:xafe_challenge/app/core/splash_screen.dart';
import 'package:xafe_challenge/app/features/authentication/signin/data/user_sign_in.dart';
import 'package:xafe_challenge/app/features/authentication/signup/data/user_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserData(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignIn(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xafe',
        home: SplashScreen(),
      ),
    );
  }
}
