import 'package:abc_cash_and_carry/screens/login_screen.dart';
import 'package:abc_cash_and_carry/utils/fonts/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSellAllRow extends StatefulWidget {
  final String mainHeadingText;
  final Widget? screen;

  CustomSellAllRow({Key? key, required this.mainHeadingText, this.screen})
      : super(key: key);

  @override
  _CustomSellAllRowState createState() => _CustomSellAllRowState();
}

class _CustomSellAllRowState extends State<CustomSellAllRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.mainHeadingText, style: CategoriesTextStyle),
          GestureDetector(
            child: Text("See All", style: SeeAllTextStyle),
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return widget.screen ?? LoginScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
