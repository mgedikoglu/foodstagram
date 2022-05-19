import 'package:flutter/material.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/ui/bottom_bar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:foodstagram/util/dimensions.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();

  static const String routeName = '/feed';
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return BottomBar(
      body: Column(
        children: [Text("asd")],
      ),
      active: 0,
    );
  }
}
