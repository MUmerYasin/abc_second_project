import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsHeaderList extends StatefulWidget {
  bool colorsChange;
  IconData iconForFAQ;
  String textForFAQ;

  AboutUsHeaderList( // this.colorsChange,
      {
    Key? key,
    required this.colorsChange,
    required this.iconForFAQ,
    required this.textForFAQ,
  }) : super(key: key);
  @override
  _AboutUsHeaderListState createState() => _AboutUsHeaderListState();
}

class _AboutUsHeaderListState extends State<AboutUsHeaderList> {
  @override
  void initState() {
    widget.colorsChange = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xffD8E9FA),
      // color: Color(0xffBED0E9),
      color: widget.colorsChange ? Color(0xffD8E9FA) : Color(0xffBED0E9),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                // CupertinoIcons.arrow_2_circlepath,
                widget.iconForFAQ,
                color: Color(0XFF0076BE),
                // color: CupertinoColors.systemIndigo,
                size: 30.0,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.textForFAQ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
