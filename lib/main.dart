import 'package:flutter/material.dart';
import 'package:foodstagram/routes/login.dart';
import 'package:foodstagram/routes/signup.dart';
import 'package:foodstagram/routes/welcome.dart';
import 'package:foodstagram/routes/feed.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/login',
    routes: {
      '/': (context) => const Welcome(),
      SignUp.routeName: (context) => SignUp(),
      Login.routeName: (context) => Login(),
      Feed.routeName: (context) => Feed(),
    },
  ));
}
