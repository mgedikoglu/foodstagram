import 'package:flutter/material.dart';
import 'package:foodstagram/routes/feed.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/screenSizes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:foodstagram/util/dimensions.dart';
import 'package:foodstagram/views/home_view.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();

  static const String routeName = '/postPage';
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: SafeArea(
        //     child: Center(
        //   child: Container(
        //     color: Colors.blue, // set your color
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Row(
        //           children: [Text("Logo")],
        //         ),
        //         Row(
        //           children: [Text("Logo")],
        //         ),
        //       ],
        //     ),
        //   ),
        // )),
        title: Text(
          'Post',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Post(),
    );
  }
}
