import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/ui/post_card.dart';

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: ClipOval(
                          child: Image(
                        image: AssetImage('lib/img/img-pc.png'),
                        width: 50,
                        height: 50,
                      )),
                      radius: 25,
                    ),
                  ),
                ],
              ),
              Column(
                children: [Text('Someone started to follow you.')],
              )
            ],
          )),
    );
  }
}

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Notification(),
                Notification(),
                Notification(),
                Notification(),
                Notification(),
                Notification(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
