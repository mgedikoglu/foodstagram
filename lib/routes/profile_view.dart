import 'package:flutter/material.dart';
import 'package:foodstagram/model/post.dart';
import 'package:foodstagram/ui/post_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<Post> posts = [
    Post(text: 'Hello World 1', date: 'March 31', likes: 10, comments: 0),
    Post(text: 'Hello World 2', date: 'March 30', likes: 0, comments: 5),
    Post(text: 'Hello World 3', date: 'March 29', likes: 20, comments: 10),
  ];
  int postCount = 0;

  void deletePost(Post post) {
    setState(() {
      posts.remove(post);
    });
  }

  void buttonClicked() {
    setState(() {
      postCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CS310',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: buttonClicked,
      ),
      body: SafeArea(
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
                        child: Image.network(
                          'https://scontent.fist2-4.fna.fbcdn.net/v/t1.6435-9/158915922_1835177049983620_7867840742222695097_n.jpg?stp=cp0_dst-jpg_e15_p640x640_q65&_nc_cat=107&ccb=1-5&_nc_sid=110474&efg=eyJpIjoidCJ9&_nc_ohc=xewcz6_AcSoAX-HqTcf&tn=yL3fhD3XrmMMdYqA&_nc_ht=scontent.fist2-4.fna&oh=00_AT972WOBWpIHv-2oGq6ghOgkcHrFiivzT1Ghtw--wIb8AQ&oe=626A0233',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      radius: 60,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                        child: Text(
                          '345',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                        child: Text(
                          '800',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        'Follower',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                        child: Text(
                          '650',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
              const Divider(
                color: Colors.pink,
                thickness: 2.0,
                height: 20,
              ),
              Text(
                'Post count: $postCount',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                color: Colors.pink,
                thickness: 2.0,
                height: 20,
              ),
              Column(
                children: posts
                    .map((post) => PostCard(
                          post: post,
                          delete: () {
                            deletePost(post);
                          },
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
