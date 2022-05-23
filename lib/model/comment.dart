import 'package:flutter/material.dart';

class Comment {
  String userName;
  String message;
  DateTime date;
  int likes = 0;

  Comment({required this.userName, required this.message, required this.date});
}
