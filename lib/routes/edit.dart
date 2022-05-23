import 'package:flutter/material.dart';
import 'package:foodstagram/routes/feed.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/screenSizes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:foodstagram/util/dimensions.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();

  static const String routeName = '/edit';
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          TextButton(
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Feed()))
            },
            child: Text(
              'Save',
              style: kAppBarTitleTextStyle,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: Dimen.regularPadding,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: Dimen.regularPadding,
                          child: CircleAvatar(
                            backgroundColor: Colors.pink,
                            child: ClipOval(
                                child: Image(
                                    image: AssetImage('lib/img/img-pc.png'))),
                            radius: 60,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () => {},
                            child: Text("Change profile photo"))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Name",
                            style: kDefaultBoldTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: screenWidth(context, dividedBy: 1.6),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Padding(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                child: Row(
                                  children: [
                                    // const Icon(Icons.email),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Mustafa',
                                      style: kDefaultBoldTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              fillColor: AppColors.textFieldFillColor,
                              filled: false,
                              labelStyle: kBoldLabelStyle,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value != null) {
                                if (value.isEmpty) {
                                  return 'Cannot leave e-mail empty';
                                }
                                if (!EmailValidator.validate(value)) {
                                  return 'Please enter a valid e-mail address';
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Surname",
                            style: kDefaultBoldTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: screenWidth(context, dividedBy: 1.6),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Padding(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                child: Row(
                                  children: [
                                    // const Icon(Icons.email),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Gedikoglu',
                                      style: kDefaultBoldTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              fillColor: AppColors.textFieldFillColor,
                              filled: false,
                              labelStyle: kBoldLabelStyle,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value != null) {
                                if (value.isEmpty) {
                                  return 'Cannot leave e-mail empty';
                                }
                                if (!EmailValidator.validate(value)) {
                                  return 'Please enter a valid e-mail address';
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Username",
                            style: kDefaultBoldTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: screenWidth(context, dividedBy: 1.6),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Padding(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                child: Row(
                                  children: [
                                    // const Icon(Icons.email),
                                    const SizedBox(width: 4),
                                    Text(
                                      'mgedikoglu',
                                      style: kDefaultBoldTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              fillColor: AppColors.textFieldFillColor,
                              filled: false,
                              labelStyle: kBoldLabelStyle,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value != null) {
                                if (value.isEmpty) {
                                  return 'Cannot leave e-mail empty';
                                }
                                if (!EmailValidator.validate(value)) {
                                  return 'Please enter a valid e-mail address';
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Name",
                            style: kDefaultBoldTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: screenWidth(context, dividedBy: 1.6),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Padding(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                child: Row(
                                  children: [
                                    // const Icon(Icons.email),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Mustafa',
                                      style: kDefaultBoldTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              fillColor: AppColors.textFieldFillColor,
                              filled: false,
                              labelStyle: kBoldLabelStyle,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value != null) {
                                if (value.isEmpty) {
                                  return 'Cannot leave e-mail empty';
                                }
                                if (!EmailValidator.validate(value)) {
                                  return 'Please enter a valid e-mail address';
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
