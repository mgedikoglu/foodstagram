import 'package:flutter/material.dart';
import 'package:foodstagram/routes/signup.dart';
import 'package:foodstagram/routes/welcome.dart';
import 'package:foodstagram/routes/feed.dart';
import 'package:foodstagram/routes/edit.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/login',
    routes: {
      '/': (context) => const Welcome(),
      SignUp.routeName: (context) => SignUp(),
      Feed.routeName: (context) => const Feed(),
      Edit.routeName: (context) => Edit(),
    },
  ));
}
