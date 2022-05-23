import 'package:flutter/material.dart';
import 'package:foodstagram/model/comment.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/model/user.dart';

User mustafa = User(
    userName: "mgedikoglu",
    name: "Mustafa",
    surname: "Gedikoglu",
    birthday: DateTime.utc(1999, 1, 8));

User berkant = User(
    userName: "bkartop",
    name: "Berkatn",
    surname: "Kartop",
    birthday: DateTime.utc(1999, 1, 8));

User omay = User(
    userName: "omayildiz",
    name: "Omay",
    surname: "Ayyıldız",
    birthday: DateTime.utc(1999, 1, 8));

User elif = User(
    userName: "eozturk",
    name: "Elif",
    surname: "Öztürk",
    birthday: DateTime.utc(1999, 1, 8));

User rafi = User(
    userName: "rafibanana",
    name: "Rafi",
    surname: "Banana",
    birthday: DateTime.utc(1999, 1, 8));

Post one = Post(
    caption: "Lorem ipsum",
    date: DateTime.utc(2022, 5, 22),
    image: "lib/img/gasto.jpeg",
    restaurantName: "Gasto Local",
    priceRating: 5,
    serviceRating: 9,
    tasteRating: 9);

Comment firstComment = Comment(
    userName: "rafibanana",
    message: "First comment!!",
    date: DateTime.utc(2022, 5, 22));

void run() {
  one.newComment(firstComment);

  mustafa.addNewPost(one);
  mustafa.addNewPost(one);
  mustafa.addNewPost(one);
  mustafa.addNewPost(one);
  mustafa.addNewPost(one);
  mustafa.addNewPost(one);

  mustafa.addFollower(omay);
  mustafa.addFollower(rafi);
  mustafa.addFollower(berkant);
  mustafa.addFollower(elif);

  mustafa.follow(berkant);
}
