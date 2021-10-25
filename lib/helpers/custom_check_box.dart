import 'package:abc_cash_and_carry/utils/strings/listview_builder_string.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  bool checkValue;
  String checkBoxName;
  int indexOfCheckList;
  // List<bool> checkValue;
  // List<String> checkBoxName;
  CustomCheckBox(
      {required this.checkValue,
      required this.checkBoxName,
      required this.indexOfCheckList,
      Key? key})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
            value: widget.checkValue,
            onChanged: (value) {
              setState(() {
                widget.checkValue = value!;
                typeOfBusinessCheckList[widget.indexOfCheckList] = value;
              });
            }),
        Flexible(
          // flex: 2,
          fit: FlexFit.loose,
          child: Text(
            widget.checkBoxName,
          ),
        ),
      ],
    );
  }

  // bool funCheckValue(){
  //   return widget.checkValue;
  // }
}
