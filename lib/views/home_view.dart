import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/ui/post_card.dart';
import 'package:foodstagram/util/screenSizes.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.pink,
                          child: ClipOval(
                              child: Image(
                            image: AssetImage('lib/img/img-pc.png'),
                            width: 40,
                            height: 40,
                          )),
                          radius: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [Text('mgedikoglu')],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(),
                Image.asset(
                  'lib/img/img-pc.png',
                  scale: 0.667,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
