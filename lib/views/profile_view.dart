import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/routes/edit.dart';
import 'package:foodstagram/routes/post.dart';
import 'package:foodstagram/sampleDB/sample_user.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: ClipOval(
                        child: Image(image: AssetImage('lib/img/img-pc.png'))),
                    radius: 60,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                      child: Text(
                        '800',
                        style: kDefaultTextStyle,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: kDefaultTextStyle,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                      child: Text(
                        '800',
                        style: kDefaultTextStyle,
                      ),
                    ),
                    Text(
                      'Follower',
                      style: kDefaultTextStyle,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                      child: Text(
                        '650',
                        style: kDefaultTextStyle,
                      ),
                    ),
                    Text(
                      'Following',
                      style: kDefaultTextStyle,
                    )
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Text(
                    "Mustafa Gedikoğlu",
                    style: kDefaultBoldTextStyle,
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                child: OutlinedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Edit()))
                  },
                  child: Text("Edit profile"),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PostPage()))
      },
      child: Padding(
        padding: EdgeInsets.all(1),
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Image.asset(
            'lib/img/gasto.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ProfileInfo(),
                // Row(
                //   children: [

                //     ButtonBar(

                //       buttonPadding:
                //           EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                //       buttonMinWidth: 100,
                //       children: [
                //         RaisedButton(
                //           child: Text("Yes"),
                //           textColor: Colors.white,
                //           color: Colors.green,
                //           onPressed: () {},
                //         ),
                //         RaisedButton(
                //           child: Text("No"),
                //           color: Colors.green,
                //           onPressed: () {},
                //         ),
                //         RaisedButton(
                //           child: Text("Yes"),
                //           textColor: Colors.white,
                //           color: Colors.green,
                //           onPressed: () {},
                //         ),
                //       ],
                //     )
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.grid_on_rounded))
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => {}, icon: Icon(Icons.bookmark)),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () => {}, icon: Icon(Icons.favorite))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate: SliverChildListDelegate(
              [
                BodyWidget(Colors.blue),
                BodyWidget(Colors.green),
                BodyWidget(Colors.yellow),
                BodyWidget(Colors.orange),
                BodyWidget(Colors.blue),
                BodyWidget(Colors.red),
                BodyWidget(Colors.blue),
                BodyWidget(Colors.green),
                BodyWidget(Colors.yellow),
                BodyWidget(Colors.orange),
                BodyWidget(Colors.blue),
                BodyWidget(Colors.red),
                BodyWidget(Colors.blue),
                BodyWidget(Colors.green),
                BodyWidget(Colors.yellow),
                BodyWidget(Colors.orange),
                BodyWidget(Colors.blue),
                BodyWidget(Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
