import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/ui/post_card.dart';
import 'package:foodstagram/util/screenSizes.dart';
import 'package:foodstagram/util/styles.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _liked = false;

  void likeChange() {}

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
                Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color.fromARGB(255, 31, 30, 30)
                          ],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height + 50));
                      },
                      blendMode: BlendMode.darken,
                      child:
                          // Container(
                          //   height: 500.0,
                          //   color: Colors.white,
                          //   alignment: Alignment.center,
                          // ),
                          Image.asset(
                        'lib/img/gasto.jpeg',
                        scale: 2,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 360,
                      child: Text(
                        "Gasto Local, İstanbul",
                        style: kPostTextStyleBold,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 400,
                      child: Text(
                        "Taco Shrimp Bomb",
                        style: kPostTextStyleDefault,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 430,
                      // child: Text(
                      //   "Price",
                      //   style: kButtonDarkTextStyle,
                      // ),
                      child: Row(
                        children: [
                          Text(
                            "Price: 6/10",
                            style: kPostTextStyleDefault,
                          ),
                          Text(
                            "",
                            style: kPostTextStyleGrey,
                          ),
                          Text(
                            " Taste: 8/10 Service: 8/10",
                            style: kPostTextStyleDefault,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            // Row(
            //   children: [
            //     IconButton(
            //         onPressed: () => {_liked ? _liked = false : _liked = true},
            //         if()[]
            //         )
            //   ],
            // )
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
