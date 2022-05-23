import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';

class User {
  String userName;
  String name;
  String surname;
  final DateTime birthday;
  List<Post> posts = [];
  List<Post> favs = [];
  List<User> following = [];
  List<User> followers = [];
  int postCount = 0;
  final DateTime enrollment = DateTime.now();

  User({
    required this.userName,
    required this.name,
    required this.surname,
    required this.birthday,
  });

  int accountAge() {
    int age = DateTime.now().year - enrollment.year;
    return age;
  }

  void addNewPost(Post newPost) {
    posts.add(newPost);
  }

  void addFollower(User newFollower) {
    followers.add(newFollower);
  }

  void follow(User newFollow) {
    following.add(newFollow);
  }
}
