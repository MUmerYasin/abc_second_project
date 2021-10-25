import 'package:flutter/material.dart';

class StatesWithTwoTextFields extends StatefulWidget {
  StatesWithTwoTextFields({
    required this.statesDataName,
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
    this.focusNode2,
    // this.labelText2,
    this.hintText2,
    this.type2,
    this.controller2,
    this.width2 = double.infinity,
    this.onchange2,
    // this.length2,
    this.textInputAction2 = TextInputAction.done,
    this.onPressed2,
  });

  final String statesDataName;

  // final String? labelText;
  final String? hintText;
  final double? width;
  final Function(String)? onchange;
  final Function()? onPressed;
  final TextInputType? type;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  // final int? length;
  final TextInputAction textInputAction;

  // final String? labelText2;
  final String? hintText2;
  final double? width2;
  final Function(String)? onchange2;
  final Function()? onPressed2;
  final TextInputType? type2;
  final TextEditingController? controller2;
  final FocusNode? focusNode2;

  // final int? length2;
  final TextInputAction textInputAction2;

  @override
  _StatesWithTwoTextFieldsState createState() =>
      _StatesWithTwoTextFieldsState();
}

class _StatesWithTwoTextFieldsState extends State<StatesWithTwoTextFields> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(
            widget.statesDataName,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
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
                        // borderRadius: BorderRadius.circular(6.0),
                      ),

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          // color: Color(0xFFdedede),
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        ),
                      ),

                      fillColor: Colors.white,
                      // fillColor: Color(0xFFBED0E9),//BED0E9
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      filled: true,
                      hintText: widget.hintText,
                      hintStyle: TextStyle(
                        color: Color(0xFF7f7f7f),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  // margin: EdgeInsets.only(top: 6.0),
                  padding: EdgeInsets.only(left: 4.0, right: 4.0),
                  // height: widget.height,
                  width: widget.width2,
                  child: TextField(
                    minLines: 1,
                    // inputFormatters: [
                    //   LengthLimitingTextInputFormatter(widget.length)
                    // ],
                    onChanged: widget.onchange2,
                    controller: widget.controller2,
                    keyboardType: widget.type2,
                    focusNode: widget.focusNode2,
                    textInputAction: widget.textInputAction2,

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
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.5,
                        ),
                      ),

                      fillColor: Colors.white,
                      // fillColor: Color(0xFFBED0E9),//BED0E9
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      filled: true,
                      hintText: widget.hintText2,
                      hintStyle: TextStyle(
                        color: Color(0xFF7f7f7f),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
