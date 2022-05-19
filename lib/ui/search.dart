import 'package:flutter/material.dart';
import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/ui/bottom_bar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:foodstagram/util/dimensions.dart';
import 'package:foodstagram/util/screenSizes.dart';

class Search extends StatefulWidget {
  const Search();
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                      width: screenWidth(context, dividedBy: 1.1),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: Container(
                            width: 100,
                            child: Row(
                              children: [
                                const Icon(Icons.search),
                                const SizedBox(width: 4),
                                const Text('Search'),
                              ],
                            ),
                          ),
                          fillColor: AppColors.textFieldFillColor,
                          filled: true,
                          labelStyle: kBoldLabelStyle,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.textFieldFillColor,
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
          ],
        ),
      ),
    ]);
  }
}
