
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrequentlyAskedQuestionsGenerated extends StatefulWidget {
  final String headingFAQString;
  final String bodyFAQString;

  FrequentlyAskedQuestionsGenerated(
      {Key? key, required this.headingFAQString, required this.bodyFAQString})
      : super(key: key);
  @override
  _FrequentlyAskedQuestionsGeneratedState createState() =>
      _FrequentlyAskedQuestionsGeneratedState();
}

class _FrequentlyAskedQuestionsGeneratedState
    extends State<FrequentlyAskedQuestionsGenerated> {
  IconData iconDataOne = CupertinoIcons.chevron_down;

  bool visibilityOne = false;
  bool selectedOne = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedOne = !selectedOne;
              if (iconDataOne == CupertinoIcons.chevron_down) {
                iconDataOne = CupertinoIcons.chevron_up;
              } else {
                iconDataOne = CupertinoIcons.chevron_down;
              }
              visibilityOne = !visibilityOne;
            });
          },
          child: AnimatedContainer(
            width: MediaQuery.of(context).size.width * 0.8,
            // height: selectedOne ? 200.0 : 100.0,
            color: Colors.grey.shade300,
            // color: selectedOne ? Colors.grey.shade200 : Colors.grey.shade400,
            alignment:
                selectedOne ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.headingFAQString.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Icon(
                      iconDataOne, // icon: selectedOne ? Icon.audiotrack : Icons.audiotrack,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Visibility(
            visible: visibilityOne,
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width * 0.8,
              // height: selectedOne ? 100.0 : 200.0,
              color: Colors.grey.shade100,
              // color: selectedOne ? Colors.red : Colors.blue,
              alignment: selectedOne
                  ? Alignment.center
                  : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.bodyFAQString,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
      ],
    );
  }
}
