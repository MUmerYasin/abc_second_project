import 'package:abc_cash_and_carry/utils/strings/listview_builder_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomCheckBoxTextField extends StatefulWidget {
  bool checkValue;
  String checkBoxName;
  int indexOfCheckList;
  // List<bool> checkValue;
  // List<String> checkBoxName;

  // final String? labelText;
  String? hintText;
  double? width;
  Function(String)? onchange;
  Function()? onPressed;
  TextInputType? type;
  TextEditingController? controller;
  // late final FocusNode? focusNode;
  FocusNode? focusNode;
  // final int? length;
  TextInputAction textInputAction;

  CustomCheckBoxTextField(
      {required this.checkValue,
      required this.checkBoxName,
      required this.indexOfCheckList,
      this.focusNode,
      // this.labelText,
      this.hintText,
      this.type,
      this.controller,
      this.width = double.infinity,
      this.onchange,
      // this.length,
      this.textInputAction = TextInputAction.done,
      this.onPressed,
      Key? key})
      : super(key: key);

  @override
  _CustomCheckBoxTextFieldState createState() =>
      _CustomCheckBoxTextFieldState();
}

class _CustomCheckBoxTextFieldState extends State<CustomCheckBoxTextField> {
  @override
  void initState() {
    // widget.focusNode = null;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  value: widget.checkValue,
                  onChanged: (value) {
                    setState(() {
                      widget.checkValue = value!;
                      reasonForExemptionCheckList[widget.indexOfCheckList] =
                          value;
                    });
                  }),
              Text(
                widget.checkBoxName,
              ),
            ],
          ),
          Container(
            height: 30,
            // margin: EdgeInsets.only(top: 6.0),
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            // height: widget.height,
            width: widget.width,
            child: TextField(
              minLines: 1,
              // inputFormatters: [
              //   LengthLimitingTextInputFormatter(widget.length)
              // ],
              onChanged: widget.onchange,
              controller: widget.controller,
              keyboardType: widget.type,
              focusNode: widget.focusNode,
              textInputAction: widget.textInputAction,

              style: TextStyle(
                // color: Color(0xFF727272),
                color: Colors.black,
                fontSize: 16.0,
              ),
              // cursorColor: Color(0xFF7f7f7f),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),

                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      // color: Color(0xFFdedede),
                      color: Colors.black,
                      width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                ),

                fillColor: Colors.white,
                // fillColor: Color(0xFFBED0E9),//BED0E9
                focusColor: Colors.white,
                hoverColor: Colors.white,
                filled: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Color(0xFF7f7f7f)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
