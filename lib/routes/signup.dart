import 'package:flutter/material.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/screenSizes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:foodstagram/util/dimensions.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();

  static const String routeName = '/signup';
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGNUP',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
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
                                // const Icon(Icons.email),
                                const SizedBox(width: 4),
                                const Text('Name'),
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
                                // const Icon(Icons.password),
                                const SizedBox(width: 4),
                                const Text('Surname'),
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
                                // const Icon(Icons.email),
                                const SizedBox(width: 4),
                                const Text("Username"),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: Container(
                            width: 100,
                            child: Row(
                              children: [
                                // const Icon(Icons.email),
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
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
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
            )
          ],
        ),
      ),
    );
  }
}
