import 'package:flutter/material.dart';

import 'package:foodstagram/util/colors.dart';
import 'package:foodstagram/util/styles.dart';
import 'package:foodstagram/util/screenSizes.dart';
import 'package:foodstagram/util/dimensions.dart';

import 'package:email_validator/email_validator.dart';

class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => PostPage()))
      // },
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

class SearchBox extends StatefulWidget {
  const SearchBox();
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(0),
                width: screenWidth(context, dividedBy: 1.1),
                height: 40,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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
                  // validator: (value) {
                  //   if (value != null) {
                  //     if (value.isEmpty) {
                  //       return 'Cannot leave e-mail empty';
                  //     }
                  //     if (!EmailValidator.validate(value)) {
                  //       return 'Please enter a valid e-mail address';
                  //     }
                  //   }
                  // },
                ),
              ),
            ],
          ),
        ));
  }
}

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SearchBox(),
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
