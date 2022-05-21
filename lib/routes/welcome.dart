import 'package:flutter/material.dart';
import 'package:foodstagram/routes/feed.dart';
import 'package:foodstagram/views/profile_view.dart';
import 'package:foodstagram/routes/signup.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:foodstagram/util/dimensions.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/screenSizes.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 70, 10, 20),
                  child: RichText(
                    text: TextSpan(
                      text: "Foodstagram",
                      style: kHeadingTextStyle,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 40),
              child: RichText(
                text: TextSpan(
                  text: "EAT SHARE DISCOVER",
                  style: kHeadingSecondTextStyle,
                ),
              ),
            ),
            Padding(
              padding: Dimen.regularPadding,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: screenWidth(context, dividedBy: 1.1),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: Container(
                            width: 100,
                            child: Row(
                              children: [
                                const SizedBox(width: 4),
                                const Text('Email'),
                              ],
                            ),
                          ),
                          fillColor: AppColors.textFieldFillColor,
                          filled: true,
                          labelStyle: kBoldLabelStyle,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(10),
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
                    Container(
                      padding: EdgeInsets.all(8),
                      width: screenWidth(context, dividedBy: 1.1),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          label: Container(
                            width: 150,
                            child: Row(
                              children: [
                                const SizedBox(width: 4),
                                const Text('Password'),
                              ],
                            ),
                          ),
                          fillColor: AppColors.textFieldFillColor,
                          filled: true,
                          labelStyle: kBoldLabelStyle,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty) {
                              return 'Cannot leave password empty';
                            }
                            if (value.length < 6) {
                              return 'Password too short';
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 100),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Feed()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'Log in',
                          style: kButtonDarkTextStyle,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: kHeadingSecondTextStyle,
                    ),
                  ),
                ]),
                Column(children: [
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()))
                          },
                      child: Text("Sign Up"))
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
